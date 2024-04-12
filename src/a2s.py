from __future__ import print_function, absolute_import, division
import _a2s
import f90wrap.runtime
import logging
import numpy

class Commondata(f90wrap.runtime.FortranModule):
    """
    Module commondata
    
    
    Defined at AIR2STREAM_MODULES.f90 lines 1-29
    
    """
    @property
    def n_par(self):
        """
        Element n_par ftype=integer pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 5
        
        """
        return _a2s.f90wrap_commondata__get__n_par()
    
    @property
    def n_q(self):
        """
        Element n_q ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 6
        
        """
        return _a2s.f90wrap_commondata__get__n_q()
    
    @n_q.setter
    def n_q(self, n_q):
        _a2s.f90wrap_commondata__set__n_q(n_q)
    
    @property
    def qmedia(self):
        """
        Element qmedia ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 7
        
        """
        return _a2s.f90wrap_commondata__get__qmedia()
    
    @qmedia.setter
    def qmedia(self, qmedia):
        _a2s.f90wrap_commondata__set__qmedia(qmedia)
    
    @property
    def theta_j(self):
        """
        Element theta_j ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 7
        
        """
        return _a2s.f90wrap_commondata__get__theta_j()
    
    @theta_j.setter
    def theta_j(self, theta_j):
        _a2s.f90wrap_commondata__set__theta_j(theta_j)
    
    @property
    def theta_j1(self):
        """
        Element theta_j1 ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 7
        
        """
        return _a2s.f90wrap_commondata__get__theta_j1()
    
    @theta_j1.setter
    def theta_j1(self, theta_j1):
        _a2s.f90wrap_commondata__set__theta_j1(theta_j1)
    
    @property
    def dd_j(self):
        """
        Element dd_j ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 7
        
        """
        return _a2s.f90wrap_commondata__get__dd_j()
    
    @dd_j.setter
    def dd_j(self, dd_j):
        _a2s.f90wrap_commondata__set__dd_j(dd_j)
    
    @property
    def dd_j1(self):
        """
        Element dd_j1 ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 7
        
        """
        return _a2s.f90wrap_commondata__get__dd_j1()
    
    @dd_j1.setter
    def dd_j1(self, dd_j1):
        _a2s.f90wrap_commondata__set__dd_j1(dd_j1)
    
    @property
    def pi(self):
        """
        Element pi ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 8
        
        """
        return _a2s.f90wrap_commondata__get__pi()
    
    @property
    def ttt(self):
        """
        Element ttt ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 9
        
        """
        return _a2s.f90wrap_commondata__get__ttt()
    
    @property
    def n_tot(self):
        """
        Element n_tot ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 10
        
        """
        return _a2s.f90wrap_commondata__get__n_tot()
    
    @n_tot.setter
    def n_tot(self, n_tot):
        _a2s.f90wrap_commondata__set__n_tot(n_tot)
    
    @property
    def n_dat(self):
        """
        Element n_dat ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 10
        
        """
        return _a2s.f90wrap_commondata__get__n_dat()
    
    @n_dat.setter
    def n_dat(self, n_dat):
        _a2s.f90wrap_commondata__set__n_dat(n_dat)
    
    @property
    def version(self):
        """
        Element version ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 11
        
        """
        return _a2s.f90wrap_commondata__get__version()
    
    @version.setter
    def version(self, version):
        _a2s.f90wrap_commondata__set__version(version)
    
    @property
    def qty(self):
        """
        Element qty ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 11
        
        """
        return _a2s.f90wrap_commondata__get__qty()
    
    @qty.setter
    def qty(self, qty):
        _a2s.f90wrap_commondata__set__qty(qty)
    
    @property
    def i_pos(self):
        """
        Element i_pos ftype=integer pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 12
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__i_pos(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            i_pos = self._arrays[array_handle]
        else:
            i_pos = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__i_pos)
            self._arrays[array_handle] = i_pos
        return i_pos
    
    @i_pos.setter
    def i_pos(self, i_pos):
        self.i_pos[...] = i_pos
    
    @property
    def i_inf(self):
        """
        Element i_inf ftype=integer pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 13
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__i_inf(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            i_inf = self._arrays[array_handle]
        else:
            i_inf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__i_inf)
            self._arrays[array_handle] = i_inf
        return i_inf
    
    @i_inf.setter
    def i_inf(self, i_inf):
        self.i_inf[...] = i_inf
    
    @property
    def date(self):
        """
        Element date ftype=integer pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 14
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__date(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            date = self._arrays[array_handle]
        else:
            date = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__date)
            self._arrays[array_handle] = date
        return date
    
    @date.setter
    def date(self, date):
        self.date[...] = date
    
    @property
    def tice_cover(self):
        """
        Element tice_cover ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 15
        
        """
        return _a2s.f90wrap_commondata__get__tice_cover()
    
    @tice_cover.setter
    def tice_cover(self, tice_cover):
        _a2s.f90wrap_commondata__set__tice_cover(tice_cover)
    
    @property
    def prc(self):
        """
        Element prc ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 15
        
        """
        return _a2s.f90wrap_commondata__get__prc()
    
    @prc.setter
    def prc(self, prc):
        _a2s.f90wrap_commondata__set__prc(prc)
    
    @property
    def mean_obs(self):
        """
        Element mean_obs ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 16
        
        """
        return _a2s.f90wrap_commondata__get__mean_obs()
    
    @mean_obs.setter
    def mean_obs(self, mean_obs):
        _a2s.f90wrap_commondata__set__mean_obs(mean_obs)
    
    @property
    def tss_obs(self):
        """
        Element tss_obs ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 16
        
        """
        return _a2s.f90wrap_commondata__get__tss_obs()
    
    @tss_obs.setter
    def tss_obs(self, tss_obs):
        _a2s.f90wrap_commondata__set__tss_obs(tss_obs)
    
    @property
    def std_obs(self):
        """
        Element std_obs ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 16
        
        """
        return _a2s.f90wrap_commondata__get__std_obs()
    
    @std_obs.setter
    def std_obs(self, std_obs):
        _a2s.f90wrap_commondata__set__std_obs(std_obs)
    
    @property
    def mineff_index(self):
        """
        Element mineff_index ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 17
        
        """
        return _a2s.f90wrap_commondata__get__mineff_index()
    
    @mineff_index.setter
    def mineff_index(self, mineff_index):
        _a2s.f90wrap_commondata__set__mineff_index(mineff_index)
    
    @property
    def finalfit(self):
        """
        Element finalfit ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 17
        
        """
        return _a2s.f90wrap_commondata__get__finalfit()
    
    @finalfit.setter
    def finalfit(self, finalfit):
        _a2s.f90wrap_commondata__set__finalfit(finalfit)
    
    @property
    def tt(self):
        """
        Element tt ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 18
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__tt(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            tt = self._arrays[array_handle]
        else:
            tt = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__tt)
            self._arrays[array_handle] = tt
        return tt
    
    @tt.setter
    def tt(self, tt):
        self.tt[...] = tt
    
    @property
    def tair(self):
        """
        Element tair ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 18
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__tair(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            tair = self._arrays[array_handle]
        else:
            tair = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__tair)
            self._arrays[array_handle] = tair
        return tair
    
    @tair.setter
    def tair(self, tair):
        self.tair[...] = tair
    
    @property
    def twat_obs_agg(self):
        """
        Element twat_obs_agg ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 18
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__twat_obs_agg(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            twat_obs_agg = self._arrays[array_handle]
        else:
            twat_obs_agg = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__twat_obs_agg)
            self._arrays[array_handle] = twat_obs_agg
        return twat_obs_agg
    
    @twat_obs_agg.setter
    def twat_obs_agg(self, twat_obs_agg):
        self.twat_obs_agg[...] = twat_obs_agg
    
    @property
    def twat_obs(self):
        """
        Element twat_obs ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 18
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__twat_obs(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            twat_obs = self._arrays[array_handle]
        else:
            twat_obs = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__twat_obs)
            self._arrays[array_handle] = twat_obs
        return twat_obs
    
    @twat_obs.setter
    def twat_obs(self, twat_obs):
        self.twat_obs[...] = twat_obs
    
    @property
    def q(self):
        """
        Element q ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 18
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__q(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            q = self._arrays[array_handle]
        else:
            q = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__q)
            self._arrays[array_handle] = q
        return q
    
    @q.setter
    def q(self, q):
        self.q[...] = q
    
    @property
    def twat_mod(self):
        """
        Element twat_mod ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 19
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__twat_mod(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            twat_mod = self._arrays[array_handle]
        else:
            twat_mod = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__twat_mod)
            self._arrays[array_handle] = twat_mod
        return twat_mod
    
    @twat_mod.setter
    def twat_mod(self, twat_mod):
        self.twat_mod[...] = twat_mod
    
    @property
    def twat_mod_agg(self):
        """
        Element twat_mod_agg ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 19
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__twat_mod_agg(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            twat_mod_agg = self._arrays[array_handle]
        else:
            twat_mod_agg = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__twat_mod_agg)
            self._arrays[array_handle] = twat_mod_agg
        return twat_mod_agg
    
    @twat_mod_agg.setter
    def twat_mod_agg(self, twat_mod_agg):
        self.twat_mod_agg[...] = twat_mod_agg
    
    @property
    def parmin(self):
        """
        Element parmin ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 20
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__parmin(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            parmin = self._arrays[array_handle]
        else:
            parmin = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__parmin)
            self._arrays[array_handle] = parmin
        return parmin
    
    @parmin.setter
    def parmin(self, parmin):
        self.parmin[...] = parmin
    
    @property
    def parmax(self):
        """
        Element parmax ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 21
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__parmax(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            parmax = self._arrays[array_handle]
        else:
            parmax = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__parmax)
            self._arrays[array_handle] = parmax
        return parmax
    
    @parmax.setter
    def parmax(self, parmax):
        self.parmax[...] = parmax
    
    @property
    def par(self):
        """
        Element par ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 22
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__par(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            par = self._arrays[array_handle]
        else:
            par = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__par)
            self._arrays[array_handle] = par
        return par
    
    @par.setter
    def par(self, par):
        self.par[...] = par
    
    @property
    def par_best(self):
        """
        Element par_best ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 22
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__par_best(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            par_best = self._arrays[array_handle]
        else:
            par_best = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__par_best)
            self._arrays[array_handle] = par_best
        return par_best
    
    @par_best.setter
    def par_best(self, par_best):
        self.par_best[...] = par_best
    
    @property
    def folder(self):
        """
        Element folder ftype=character(len=100) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 23
        
        """
        return _a2s.f90wrap_commondata__get__folder()
    
    @folder.setter
    def folder(self, folder):
        _a2s.f90wrap_commondata__set__folder(folder)
    
    @property
    def inputfile(self):
        """
        Element inputfile ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__inputfile()
    
    @inputfile.setter
    def inputfile(self, inputfile):
        _a2s.f90wrap_commondata__set__inputfile(inputfile)
    
    @property
    def name(self):
        """
        Element name ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__name()
    
    @name.setter
    def name(self, name):
        _a2s.f90wrap_commondata__set__name(name)
    
    @property
    def air_station(self):
        """
        Element air_station ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__air_station()
    
    @air_station.setter
    def air_station(self, air_station):
        _a2s.f90wrap_commondata__set__air_station(air_station)
    
    @property
    def water_station(self):
        """
        Element water_station ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__water_station()
    
    @water_station.setter
    def water_station(self, water_station):
        _a2s.f90wrap_commondata__set__water_station(water_station)
    
    @property
    def station(self):
        """
        Element station ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__station()
    
    @station.setter
    def station(self, station):
        _a2s.f90wrap_commondata__set__station(station)
    
    @property
    def model(self):
        """
        Element model ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__model()
    
    @model.setter
    def model(self, model):
        _a2s.f90wrap_commondata__set__model(model)
    
    @property
    def runmode(self):
        """
        Element runmode ftype=character(len=30) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 24
        
        """
        return _a2s.f90wrap_commondata__get__runmode()
    
    @runmode.setter
    def runmode(self, runmode):
        _a2s.f90wrap_commondata__set__runmode(runmode)
    
    @property
    def series(self):
        """
        Element series ftype=character(len=1) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 25
        
        """
        return _a2s.f90wrap_commondata__get__series()
    
    @series.setter
    def series(self, series):
        _a2s.f90wrap_commondata__set__series(series)
    
    @property
    def unit(self):
        """
        Element unit ftype=character(len=1) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 25
        
        """
        return _a2s.f90wrap_commondata__get__unit()
    
    @unit.setter
    def unit(self, unit):
        _a2s.f90wrap_commondata__set__unit(unit)
    
    @property
    def time_res(self):
        """
        Element time_res ftype=character(len=3) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 26
        
        """
        return _a2s.f90wrap_commondata__get__time_res()
    
    @time_res.setter
    def time_res(self, time_res):
        _a2s.f90wrap_commondata__set__time_res(time_res)
    
    @property
    def fun_obj(self):
        """
        Element fun_obj ftype=character(len=3) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 27
        
        """
        return _a2s.f90wrap_commondata__get__fun_obj()
    
    @fun_obj.setter
    def fun_obj(self, fun_obj):
        _a2s.f90wrap_commondata__set__fun_obj(fun_obj)
    
    @property
    def mod_num(self):
        """
        Element mod_num ftype=character(len=3) pytype=str
        
        
        Defined at AIR2STREAM_MODULES.f90 line 27
        
        """
        return _a2s.f90wrap_commondata__get__mod_num()
    
    @mod_num.setter
    def mod_num(self, mod_num):
        _a2s.f90wrap_commondata__set__mod_num(mod_num)
    
    @property
    def flag_par(self):
        """
        Element flag_par ftype=logical pytype=bool
        
        
        Defined at AIR2STREAM_MODULES.f90 line 28
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _a2s.f90wrap_commondata__array__flag_par(f90wrap.runtime.empty_handle)
        if array_handle in self._arrays:
            flag_par = self._arrays[array_handle]
        else:
            flag_par = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    f90wrap.runtime.empty_handle,
                                    _a2s.f90wrap_commondata__array__flag_par)
            self._arrays[array_handle] = flag_par
        return flag_par
    
    @flag_par.setter
    def flag_par(self, flag_par):
        self.flag_par[...] = flag_par
    
    @property
    def n_run(self):
        """
        Element n_run ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 29
        
        """
        return _a2s.f90wrap_commondata__get__n_run()
    
    @n_run.setter
    def n_run(self, n_run):
        _a2s.f90wrap_commondata__set__n_run(n_run)
    
    @property
    def n_particles(self):
        """
        Element n_particles ftype=integer  pytype=int
        
        
        Defined at AIR2STREAM_MODULES.f90 line 29
        
        """
        return _a2s.f90wrap_commondata__get__n_particles()
    
    @n_particles.setter
    def n_particles(self, n_particles):
        _a2s.f90wrap_commondata__set__n_particles(n_particles)
    
    @property
    def c1(self):
        """
        Element c1 ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 30
        
        """
        return _a2s.f90wrap_commondata__get__c1()
    
    @c1.setter
    def c1(self, c1):
        _a2s.f90wrap_commondata__set__c1(c1)
    
    @property
    def c2(self):
        """
        Element c2 ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 30
        
        """
        return _a2s.f90wrap_commondata__get__c2()
    
    @c2.setter
    def c2(self, c2):
        _a2s.f90wrap_commondata__set__c2(c2)
    
    @property
    def wmin(self):
        """
        Element wmin ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 30
        
        """
        return _a2s.f90wrap_commondata__get__wmin()
    
    @wmin.setter
    def wmin(self, wmin):
        _a2s.f90wrap_commondata__set__wmin(wmin)
    
    @property
    def wmax(self):
        """
        Element wmax ftype=real(kind=8) pytype=float
        
        
        Defined at AIR2STREAM_MODULES.f90 line 30
        
        """
        return _a2s.f90wrap_commondata__get__wmax()
    
    @wmax.setter
    def wmax(self, wmax):
        _a2s.f90wrap_commondata__set__wmax(wmax)
    
    def __str__(self):
        ret = ['<commondata>{\n']
        ret.append('    n_par : ')
        ret.append(repr(self.n_par))
        ret.append(',\n    n_q : ')
        ret.append(repr(self.n_q))
        ret.append(',\n    qmedia : ')
        ret.append(repr(self.qmedia))
        ret.append(',\n    theta_j : ')
        ret.append(repr(self.theta_j))
        ret.append(',\n    theta_j1 : ')
        ret.append(repr(self.theta_j1))
        ret.append(',\n    dd_j : ')
        ret.append(repr(self.dd_j))
        ret.append(',\n    dd_j1 : ')
        ret.append(repr(self.dd_j1))
        ret.append(',\n    pi : ')
        ret.append(repr(self.pi))
        ret.append(',\n    ttt : ')
        ret.append(repr(self.ttt))
        ret.append(',\n    n_tot : ')
        ret.append(repr(self.n_tot))
        ret.append(',\n    n_dat : ')
        ret.append(repr(self.n_dat))
        ret.append(',\n    version : ')
        ret.append(repr(self.version))
        ret.append(',\n    qty : ')
        ret.append(repr(self.qty))
        ret.append(',\n    i_pos : ')
        ret.append(repr(self.i_pos))
        ret.append(',\n    i_inf : ')
        ret.append(repr(self.i_inf))
        ret.append(',\n    date : ')
        ret.append(repr(self.date))
        ret.append(',\n    tice_cover : ')
        ret.append(repr(self.tice_cover))
        ret.append(',\n    prc : ')
        ret.append(repr(self.prc))
        ret.append(',\n    mean_obs : ')
        ret.append(repr(self.mean_obs))
        ret.append(',\n    tss_obs : ')
        ret.append(repr(self.tss_obs))
        ret.append(',\n    std_obs : ')
        ret.append(repr(self.std_obs))
        ret.append(',\n    mineff_index : ')
        ret.append(repr(self.mineff_index))
        ret.append(',\n    finalfit : ')
        ret.append(repr(self.finalfit))
        ret.append(',\n    tt : ')
        ret.append(repr(self.tt))
        ret.append(',\n    tair : ')
        ret.append(repr(self.tair))
        ret.append(',\n    twat_obs_agg : ')
        ret.append(repr(self.twat_obs_agg))
        ret.append(',\n    twat_obs : ')
        ret.append(repr(self.twat_obs))
        ret.append(',\n    q : ')
        ret.append(repr(self.q))
        ret.append(',\n    twat_mod : ')
        ret.append(repr(self.twat_mod))
        ret.append(',\n    twat_mod_agg : ')
        ret.append(repr(self.twat_mod_agg))
        ret.append(',\n    parmin : ')
        ret.append(repr(self.parmin))
        ret.append(',\n    parmax : ')
        ret.append(repr(self.parmax))
        ret.append(',\n    par : ')
        ret.append(repr(self.par))
        ret.append(',\n    par_best : ')
        ret.append(repr(self.par_best))
        ret.append(',\n    folder : ')
        ret.append(repr(self.folder))
        ret.append(',\n    inputfile : ')
        ret.append(repr(self.inputfile))
        ret.append(',\n    name : ')
        ret.append(repr(self.name))
        ret.append(',\n    air_station : ')
        ret.append(repr(self.air_station))
        ret.append(',\n    water_station : ')
        ret.append(repr(self.water_station))
        ret.append(',\n    station : ')
        ret.append(repr(self.station))
        ret.append(',\n    model : ')
        ret.append(repr(self.model))
        ret.append(',\n    runmode : ')
        ret.append(repr(self.runmode))
        ret.append(',\n    series : ')
        ret.append(repr(self.series))
        ret.append(',\n    unit : ')
        ret.append(repr(self.unit))
        ret.append(',\n    time_res : ')
        ret.append(repr(self.time_res))
        ret.append(',\n    fun_obj : ')
        ret.append(repr(self.fun_obj))
        ret.append(',\n    mod_num : ')
        ret.append(repr(self.mod_num))
        ret.append(',\n    flag_par : ')
        ret.append(repr(self.flag_par))
        ret.append(',\n    n_run : ')
        ret.append(repr(self.n_run))
        ret.append(',\n    n_particles : ')
        ret.append(repr(self.n_particles))
        ret.append(',\n    c1 : ')
        ret.append(repr(self.c1))
        ret.append(',\n    c2 : ')
        ret.append(repr(self.c2))
        ret.append(',\n    wmin : ')
        ret.append(repr(self.wmin))
        ret.append(',\n    wmax : ')
        ret.append(repr(self.wmax))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    

commondata = Commondata()

def print_help():
    """
    print_help()
    
    
    Defined at AIR2STREAM_READ.f90 lines 1-11
    
    
    """
    _a2s.f90wrap_print_help()

def print_byebye():
    """
    print_byebye()
    
    
    Defined at AIR2STREAM_READ.f90 lines 13-17
    
    
    """
    _a2s.f90wrap_print_byebye()

def parse_command_args():
    """
    parse_command_args()
    
    
    Defined at AIR2STREAM_READ.f90 lines 22-56
    
    
    """
    _a2s.f90wrap_parse_command_args()

def read_calibration():
    """
    read_calibration()
    
    
    Defined at AIR2STREAM_READ.f90 lines 58-147
    
    
    """
    _a2s.f90wrap_read_calibration()

def feasible_parameters_for_version():
    """
    feasible_parameters_for_version()
    
    
    Defined at AIR2STREAM_READ.f90 lines 152-176
    
    
    """
    _a2s.f90wrap_feasible_parameters_for_version()

def deallocate_input_arrays():
    """
    deallocate_input_arrays()
    
    
    Defined at AIR2STREAM_READ.f90 lines 181-188
    
    
    """
    _a2s.f90wrap_deallocate_input_arrays()

def deallocate_i_arrays():
    """
    deallocate_i_arrays()
    
    
    Defined at AIR2STREAM_READ.f90 lines 190-200
    
    
    """
    _a2s.f90wrap_deallocate_i_arrays()

def init_param_arrays():
    """
    init_param_arrays()
    
    
    Defined at AIR2STREAM_READ.f90 lines 202-211
    
    
    """
    _a2s.f90wrap_init_param_arrays()

def init_input_arrays(n):
    """
    init_input_arrays(n)
    
    
    Defined at AIR2STREAM_READ.f90 lines 213-227
    
    Parameters
    ----------
    n : int
    
    """
    _a2s.f90wrap_init_input_arrays(n=n)

def read_validation():
    """
    read_validation()
    
    
    Defined at AIR2STREAM_READ.f90 lines 232-238
    
    
    """
    _a2s.f90wrap_read_validation()

def read_tseries(p):
    """
    read_tseries(p)
    
    
    Defined at AIR2STREAM_READ.f90 lines 243-319
    
    Parameters
    ----------
    p : str
    
    """
    _a2s.f90wrap_read_tseries(p=p)

def init_fractional_year_series_calib():
    """
    init_fractional_year_series_calib()
    
    
    Defined at AIR2STREAM_READ.f90 lines 329-362
    
    
    """
    _a2s.f90wrap_init_fractional_year_series_calib()

def forward_mode():
    """
    forward_mode()
    
    
    Defined at AIR2STREAM_RUNMODE.f90 lines 1-8
    
    
    """
    _a2s.f90wrap_forward_mode()

def simulation_mode():
    """
    simulation_mode()
    
    
    Defined at AIR2STREAM_RUNMODE.f90 lines 13-18
    
    
    """
    _a2s.f90wrap_simulation_mode()

def pso_mode():
    """
    pso_mode()
    
    
    Defined at AIR2STREAM_RUNMODE.f90 lines 23-143
    
    
    """
    _a2s.f90wrap_pso_mode()

def lh_mode():
    """
    lh_mode()
    
    
    Defined at AIR2STREAM_RUNMODE.f90 lines 148-195
    
    
    """
    _a2s.f90wrap_lh_mode()

def shuffle(a, n):
    """
    shuffle(a, n)
    
    
    Defined at AIR2STREAM_RUNMODE.f90 lines 199-211
    
    Parameters
    ----------
    a : int array
    n : int
    
    """
    _a2s.f90wrap_shuffle(a=a, n=n)

def pso_array_init():
    """
    pso_array_init()
    
    
    Defined at AIR2STREAM_RUNMODE.f90 lines 213-331
    
    
    """
    _a2s.f90wrap_pso_array_init()

def sub_1(ei):
    """
    sub_1(ei)
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 4-13
    
    Parameters
    ----------
    ei : float
    
    """
    _a2s.f90wrap_sub_1(ei=ei)

def call_model():
    """
    call_model()
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 18-102
    
    
    ------------RK4
    """
    _a2s.f90wrap_call_model()

def rk4_air2stream(ta, qq, tw, time):
    """
    k = rk4_air2stream(ta, qq, tw, time)
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 107-156
    
    Parameters
    ----------
    ta : float
    qq : float
    tw : float
    time : float
    
    Returns
    -------
    k : float
    
    """
    k = _a2s.f90wrap_rk4_air2stream(ta=ta, qq=qq, tw=tw, time=time)
    return k

def funcobj():
    """
    ind = funcobj()
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 161-207
    
    
    Returns
    -------
    ind : float
    
    """
    ind = _a2s.f90wrap_funcobj()
    return ind

def aggregation():
    """
    aggregation()
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 212-339
    
    
    """
    _a2s.f90wrap_aggregation()

def statis():
    """
    statis()
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 344-359
    
    
    """
    _a2s.f90wrap_statis()

def forward():
    """
    forward()
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 364-408
    
    
    """
    _a2s.f90wrap_forward()

def best(fit):
    """
    part, foptim = best(fit)
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 413-427
    
    Parameters
    ----------
    fit : float array
    
    Returns
    -------
    part : int
    foptim : float
    
    """
    part, foptim = _a2s.f90wrap_best(fit=fit)
    return part, foptim

def leap_year(y):
    """
    i = leap_year(y)
    
    
    Defined at AIR2STREAM_SUBROUTINES.f90 lines 432-444
    
    Parameters
    ----------
    y : int
    
    Returns
    -------
    i : int
    
    """
    i = _a2s.f90wrap_leap_year(y=y)
    return i

