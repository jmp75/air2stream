"""
Facilities to manipulate time series and date times, idiosyncratic to the data in this project.
"""

from typing import Sequence
import numpy as np, pandas as pd

_plus_one_day = pd.Timedelta(days=1)
_MISSING_DATA_VALUE=-999.0

def utc_to_aus_est(d:pd.Timestamp) -> pd.Timestamp: # '2001-11-14 14:00:00'
    """transform a UTC timestamp to a 'midnight' Australian Eastern Standard Time timestamp

    Args:
        d (pd.Timestamp): UTC timestamp expected to be at UTC time 14:00:00

    Returns:
        pd.Timestamp: Australian Eastern Standard Time timestamp at midnight
    """
    str_d = str(d)
    assert str_d[-8:] == '14:00:00'
    date_only = pd.Timestamp(str_d[:10]) # '2001-11-15 00:00:00'
    return date_only + _plus_one_day


def series_utc_to_aus_est(tseries:pd.Series) -> pd.Series:
    """transform a UTC timestamp series to a 'midnight' Australian Eastern Standard Time timestamp series"""
    localised_index = pd.DatetimeIndex([utc_to_aus_est(d) for d in tseries.index])
    return pd.Series(data=tseries.values, index=localised_index)

def min_date(dates:Sequence[pd.Timestamp]) -> pd.Timestamp:
    """Gets the minimum date from a sequence of dates

    Args:
        dates (Sequence[pd.Timestamp]): sequence of dates

    Returns:
        pd.Timestamp: minimum date
    """    
    x = pd.Timestamp.max
    for d in dates:
        x = d if d < x else x
    return x

def max_date(dates:Sequence[pd.Timestamp]) -> pd.Timestamp:
    """Gets the maximum date from a sequence of dates

    Args:
        dates (Sequence[pd.Timestamp]): sequence of dates

    Returns:
        pd.Timestamp: maximum date
    """    
    x = pd.Timestamp.min
    for d in dates:
        x = d if d > x else x
    return x

def max_start(time_series:Sequence[pd.Series]) -> pd.Timestamp:
    """Gets the earliest common start date from a sequence of time series

    Args:
        time_series (Sequence[pd.Series]): sequence of time series

    Returns:
        pd.Timestamp: earliest common start date
    """    
    assert min([len(x) for x in time_series]) > 0
    return max_date(x.index[0] for x in time_series)

def min_end(time_series:Sequence[pd.Series]) -> pd.Timestamp:
    """Gets the latest common end date from a sequence of time series

    Args:
        time_series (Sequence[pd.Series]): sequence of time series

    Returns:
        pd.Timestamp: latest common end date
    """    
    assert min([len(x) for x in time_series]) > 0
    return min_date(x.index[-1] for x in time_series)


def next_new_year(d:pd.Timestamp) -> pd.Timestamp:
    """Gets the next new year from a date"""
    if d.month == 1 and d.day == 1:
        return d
    else:
        return pd.Timestamp(d.year+1, 1, 1)

def previous_new_year_eve(d:pd.Timestamp) -> pd.Timestamp:
    """Gets the previous new year eve from a date"""
    if d.month == 12 and d.day == 31:
        return d
    else:
        return pd.Timestamp(d.year-1, 12, 31)

def subset_time_series(time_series:pd.Series, common_start:pd.Timestamp, common_end:pd.Timestamp) -> Sequence[pd.Series]:
    """Gets a subset of a sequence of time series, between a common start and end date"""
    mask_greater = np.greater_equal(time_series.index, common_start)
    mask_smaller = np.logical_not(np.greater(time_series.index, common_end))
    mask = np.logical_and(mask_greater, mask_smaller)
    return time_series[mask]


def augment_one_year(time_series:pd.Series) -> pd.Series:
    dt_ind = time_series.index.values
    s = dt_ind[0]
    new_index = [s + pd.Timedelta(days=n) for n in range(-365, 0)] + [x for x in dt_ind]
    ts_values = time_series.values.tolist()
    new_ts_values = ts_values[:365] + ts_values
    return pd.Series(data=new_ts_values, index=new_index)


def nan_as_missing_code(x:np.ndarray) -> np.ndarray:
    y = x.copy()
    y[np.isnan(x)] = _MISSING_DATA_VALUE
    return y

def missing_code_as_nan(x:np.ndarray) -> np.ndarray:
    y = x.copy()
    y[np.equal(x, _MISSING_DATA_VALUE)] = np.nan
    return y

def first_not_missing(x):
    vv = np.logical_not(np.isnan(x))
    x_present = x[vv]
    if len(x_present) == 0:
        return 0.0
    else:
        return x_present[0]

def gap_fill(q):
    n = len(q)
    last_valid=first_not_missing(q)
    q_gapfilled = q.copy()
    for i in range(n):
        x = q[i]
        if np.isnan(x):
            q_gapfilled[i] = last_valid
        else:
            last_valid=q[i]
    return q_gapfilled
        
