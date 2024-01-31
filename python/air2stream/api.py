
_MISSING_DATA_VALUE=-999.0

import air2stream.native.a2s as _a2s
_cc = _a2s.commondata
import numpy as np, pandas as pd
from air2stream.tseries import gap_fill, missing_code_as_nan, nan_as_missing_code

def _update_station_names():
    # name of the river/basin/region
    # name/ID of the air temperature station
    # name/ID of the water temperature station
    _cc.station = _cc.air_station + b'_' + _cc.water_station

def set_air_station_id(station_id:str):
    # name/ID of the air temperature station
    _cc.air_station = station_id
    _update_station_names()

def set_water_station_id(station_id:str):
    # name of the river/basin/region
    _cc.name = station_id
    # name/ID of the water temperature station
    _cc.water_station = station_id
    _update_station_names()

def set_defaults():
    _no_station_id = "no_station_id"
    # Main input
    set_air_station_id(_no_station_id)
    set_water_station_id(_no_station_id)
    _cc.series = "c"                # type of series: c=continuous series, m=mean year
    _cc.time_res = "1d"                # time resolution: 1d=daily, nw=n weeks (n=1,2,...), 1m=monthly
    _cc.version = 8               # version: 3,4,5,7,8 parameters
    _cc.Tice_cover = 0                # Threshold temperature for ice formation
    _cc.fun_obj = "NSE"                # objective function: RMS (Root Mean Square Error), NSE (Nash-Sutcliffe Efficiency Index), KGE (Kling-Gupta Efficiency Index)
    _cc.mod_num = "CRN"              # mod_num : numerical method used to solve the model equation EUL (Euler Explicit), RK2 (Runge-Kutta 2), RK4 (Runge-Kutta 4), CRN (Crank Nicolson). CRN is the suggested choice.
    _cc.runmode = "PSO"                # optimization algorithm: PSO (Particle Swarm Optimization) or RANSAM (Random Sampling)
    _cc.prc = 0.60            # minimum percentage of data: 0...1. E.g., when using 1m time resolution, the monthly average is set to NaN when available data during one month are less than this percentage (60% in this case)    
    _cc.n_run = 500                # n_run: number of iterations
    _cc.mineff_index = -999            # minimum efficiency index (i.e., RMS, NSE, KGE). All model realization with efficiency index greater than this threshold are saved in file 0_...

    _cc.n_particles = 500
    _cc.c1 = 2
    _cc.c2 = 2
    _cc.wmax = 0.9
    _cc.wmin = 0.4


_SOME_DEFAUT_PARAMETERS = np.array([0.958264, 0.522815, 0.441700, -0.207825, 18.512997, 5.366099, 0.529306, 3.053014])

def set_defaults_parameters():
    _a2s.init_param_arrays()
    _cc.parmin = np.array([-5, -5, -5, -1, 0, 0, 0, -1], dtype=float)
    _cc.parmax = np.array([15, 1.5, 5, 1, 20, 10, 1, 5], dtype=float)
    _cc.par = _SOME_DEFAUT_PARAMETERS

_time_index = None

def _init_input_arrays(n:int):
    """Reinitialise common data arrays.
    
    air2stream uses a cache of arrays. We need to clear this cache otherwise really bad
    things happen when we change the size of the input arrays, notably in a calibration/validation context within the same program. 
    """
    _a2s.commondata._arrays.clear()
    _a2s.init_input_arrays(n)

def set_inputs(t_mean_series:pd.Series, streamflow_series:pd.Series, water_temp_series:pd.Series):
    global _time_index
    years = [x.year for x in streamflow_series.index]
    months = [x.month for x in streamflow_series.index]
    days = [x.day for x in streamflow_series.index]
    _time_index = streamflow_series.index.copy()
    n = len(days)
    _init_input_arrays(n)
    _cc.date[:,0] = years
    _cc.date[:,1] = months
    _cc.date[:,2] = days
    # **IMPORTANT**. need to initialise a cryptic array. https://jira.csiro.au/projects/HYDROML/issues/HYDROML-19
    _a2s.initialise_tt()

    _cc.tair = nan_as_missing_code(t_mean_series.values)
    _cc.twat_obs = nan_as_missing_code(water_temp_series.values)

    q_gapfilled = gap_fill(streamflow_series.values)
    _cc.q = q_gapfilled


def use_streamflow_stats(streamflow_not_gapfilled:pd.Series):
    q = nan_as_missing_code(streamflow_not_gapfilled.values)
    q_positive = q[q >= 0]
    q_media = q_positive.mean() # code says media (median?) but actually calcualtes mean.
    _cc.qmedia = q_media
    _cc.n_q = len(q_positive)

def prepare_calibration():
    # _a2s.deallocate_input_arrays()
    _a2s.aggregation()
    _a2s.statis()

from typing import Optional

def execute(p:Optional[np.ndarray]=None):
    if p is not None:
        set_parameters(p)
    _a2s.forward_mode()
    return _cc.par_best, _cc.finalfit

def _model_array_to_tseries(x:np.ndarray):
    data = missing_code_as_nan(x)
    return pd.Series(index=_time_index, data=data)

def modelled_water_temperature():
    return _model_array_to_tseries(_cc.twat_mod)

def observed_water_temperature():
    return _model_array_to_tseries(_cc.twat_obs)

def streamflow():
    return _model_array_to_tseries(_cc.q)

def fit():
    _a2s.pso_array_init()
    return _cc.par_best, _cc.finalfit

def fitted_parameters():
    return _cc.par_best

def fitted_objective():
    return _cc.finalfit

def set_parameters(p:np.ndarray):
    _cc.par = p
