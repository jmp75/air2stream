! Module commondata defined in file AIR2STREAM_MODULES.f90

subroutine f90wrap_commondata__get__n_par(f90wrap_n_par)
    use commondata, only: commondata_n_par => n_par
    implicit none
    integer, intent(out) :: f90wrap_n_par
    
    f90wrap_n_par = commondata_n_par
end subroutine f90wrap_commondata__get__n_par

subroutine f90wrap_commondata__get__n_Q(f90wrap_n_Q)
    use commondata, only: commondata_n_Q => n_Q
    implicit none
    integer, intent(out) :: f90wrap_n_Q
    
    f90wrap_n_Q = commondata_n_Q
end subroutine f90wrap_commondata__get__n_Q

subroutine f90wrap_commondata__set__n_Q(f90wrap_n_Q)
    use commondata, only: commondata_n_Q => n_Q
    implicit none
    integer, intent(in) :: f90wrap_n_Q
    
    commondata_n_Q = f90wrap_n_Q
end subroutine f90wrap_commondata__set__n_Q

subroutine f90wrap_commondata__get__Qmedia(f90wrap_Qmedia)
    use commondata, only: commondata_Qmedia => Qmedia
    implicit none
    real(8), intent(out) :: f90wrap_Qmedia
    
    f90wrap_Qmedia = commondata_Qmedia
end subroutine f90wrap_commondata__get__Qmedia

subroutine f90wrap_commondata__set__Qmedia(f90wrap_Qmedia)
    use commondata, only: commondata_Qmedia => Qmedia
    implicit none
    real(8), intent(in) :: f90wrap_Qmedia
    
    commondata_Qmedia = f90wrap_Qmedia
end subroutine f90wrap_commondata__set__Qmedia

subroutine f90wrap_commondata__get__theta_j(f90wrap_theta_j)
    use commondata, only: commondata_theta_j => theta_j
    implicit none
    real(8), intent(out) :: f90wrap_theta_j
    
    f90wrap_theta_j = commondata_theta_j
end subroutine f90wrap_commondata__get__theta_j

subroutine f90wrap_commondata__set__theta_j(f90wrap_theta_j)
    use commondata, only: commondata_theta_j => theta_j
    implicit none
    real(8), intent(in) :: f90wrap_theta_j
    
    commondata_theta_j = f90wrap_theta_j
end subroutine f90wrap_commondata__set__theta_j

subroutine f90wrap_commondata__get__theta_j1(f90wrap_theta_j1)
    use commondata, only: commondata_theta_j1 => theta_j1
    implicit none
    real(8), intent(out) :: f90wrap_theta_j1
    
    f90wrap_theta_j1 = commondata_theta_j1
end subroutine f90wrap_commondata__get__theta_j1

subroutine f90wrap_commondata__set__theta_j1(f90wrap_theta_j1)
    use commondata, only: commondata_theta_j1 => theta_j1
    implicit none
    real(8), intent(in) :: f90wrap_theta_j1
    
    commondata_theta_j1 = f90wrap_theta_j1
end subroutine f90wrap_commondata__set__theta_j1

subroutine f90wrap_commondata__get__DD_j(f90wrap_DD_j)
    use commondata, only: commondata_DD_j => DD_j
    implicit none
    real(8), intent(out) :: f90wrap_DD_j
    
    f90wrap_DD_j = commondata_DD_j
end subroutine f90wrap_commondata__get__DD_j

subroutine f90wrap_commondata__set__DD_j(f90wrap_DD_j)
    use commondata, only: commondata_DD_j => DD_j
    implicit none
    real(8), intent(in) :: f90wrap_DD_j
    
    commondata_DD_j = f90wrap_DD_j
end subroutine f90wrap_commondata__set__DD_j

subroutine f90wrap_commondata__get__DD_j1(f90wrap_DD_j1)
    use commondata, only: commondata_DD_j1 => DD_j1
    implicit none
    real(8), intent(out) :: f90wrap_DD_j1
    
    f90wrap_DD_j1 = commondata_DD_j1
end subroutine f90wrap_commondata__get__DD_j1

subroutine f90wrap_commondata__set__DD_j1(f90wrap_DD_j1)
    use commondata, only: commondata_DD_j1 => DD_j1
    implicit none
    real(8), intent(in) :: f90wrap_DD_j1
    
    commondata_DD_j1 = f90wrap_DD_j1
end subroutine f90wrap_commondata__set__DD_j1

subroutine f90wrap_commondata__get__pi(f90wrap_pi)
    use commondata, only: commondata_pi => pi
    implicit none
    real(8), intent(out) :: f90wrap_pi
    
    f90wrap_pi = commondata_pi
end subroutine f90wrap_commondata__get__pi

subroutine f90wrap_commondata__get__ttt(f90wrap_ttt)
    use commondata, only: commondata_ttt => ttt
    implicit none
    real(8), intent(out) :: f90wrap_ttt
    
    f90wrap_ttt = commondata_ttt
end subroutine f90wrap_commondata__get__ttt

subroutine f90wrap_commondata__get__n_tot(f90wrap_n_tot)
    use commondata, only: commondata_n_tot => n_tot
    implicit none
    integer, intent(out) :: f90wrap_n_tot
    
    f90wrap_n_tot = commondata_n_tot
end subroutine f90wrap_commondata__get__n_tot

subroutine f90wrap_commondata__set__n_tot(f90wrap_n_tot)
    use commondata, only: commondata_n_tot => n_tot
    implicit none
    integer, intent(in) :: f90wrap_n_tot
    
    commondata_n_tot = f90wrap_n_tot
end subroutine f90wrap_commondata__set__n_tot

subroutine f90wrap_commondata__get__n_dat(f90wrap_n_dat)
    use commondata, only: commondata_n_dat => n_dat
    implicit none
    integer, intent(out) :: f90wrap_n_dat
    
    f90wrap_n_dat = commondata_n_dat
end subroutine f90wrap_commondata__get__n_dat

subroutine f90wrap_commondata__set__n_dat(f90wrap_n_dat)
    use commondata, only: commondata_n_dat => n_dat
    implicit none
    integer, intent(in) :: f90wrap_n_dat
    
    commondata_n_dat = f90wrap_n_dat
end subroutine f90wrap_commondata__set__n_dat

subroutine f90wrap_commondata__get__version(f90wrap_version)
    use commondata, only: commondata_version => version
    implicit none
    integer, intent(out) :: f90wrap_version
    
    f90wrap_version = commondata_version
end subroutine f90wrap_commondata__get__version

subroutine f90wrap_commondata__set__version(f90wrap_version)
    use commondata, only: commondata_version => version
    implicit none
    integer, intent(in) :: f90wrap_version
    
    commondata_version = f90wrap_version
end subroutine f90wrap_commondata__set__version

subroutine f90wrap_commondata__get__qty(f90wrap_qty)
    use commondata, only: commondata_qty => qty
    implicit none
    integer, intent(out) :: f90wrap_qty
    
    f90wrap_qty = commondata_qty
end subroutine f90wrap_commondata__get__qty

subroutine f90wrap_commondata__set__qty(f90wrap_qty)
    use commondata, only: commondata_qty => qty
    implicit none
    integer, intent(in) :: f90wrap_qty
    
    commondata_qty = f90wrap_qty
end subroutine f90wrap_commondata__set__qty

subroutine f90wrap_commondata__array__I_pos(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_i_pos => i_pos
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 5
    if (allocated(commondata_I_pos)) then
        dshape(1:1) = shape(commondata_I_pos)
        dloc = loc(commondata_I_pos)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__I_pos

subroutine f90wrap_commondata__array__I_inf(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_i_inf => i_inf
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 5
    if (allocated(commondata_I_inf)) then
        dshape(1:2) = shape(commondata_I_inf)
        dloc = loc(commondata_I_inf)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__I_inf

subroutine f90wrap_commondata__array__date(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_date => date
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 5
    if (allocated(commondata_date)) then
        dshape(1:2) = shape(commondata_date)
        dloc = loc(commondata_date)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__date

subroutine f90wrap_commondata__get__Tice_cover(f90wrap_Tice_cover)
    use commondata, only: commondata_Tice_cover => Tice_cover
    implicit none
    real(8), intent(out) :: f90wrap_Tice_cover
    
    f90wrap_Tice_cover = commondata_Tice_cover
end subroutine f90wrap_commondata__get__Tice_cover

subroutine f90wrap_commondata__set__Tice_cover(f90wrap_Tice_cover)
    use commondata, only: commondata_Tice_cover => Tice_cover
    implicit none
    real(8), intent(in) :: f90wrap_Tice_cover
    
    commondata_Tice_cover = f90wrap_Tice_cover
end subroutine f90wrap_commondata__set__Tice_cover

subroutine f90wrap_commondata__get__prc(f90wrap_prc)
    use commondata, only: commondata_prc => prc
    implicit none
    real(8), intent(out) :: f90wrap_prc
    
    f90wrap_prc = commondata_prc
end subroutine f90wrap_commondata__get__prc

subroutine f90wrap_commondata__set__prc(f90wrap_prc)
    use commondata, only: commondata_prc => prc
    implicit none
    real(8), intent(in) :: f90wrap_prc
    
    commondata_prc = f90wrap_prc
end subroutine f90wrap_commondata__set__prc

subroutine f90wrap_commondata__get__mean_obs(f90wrap_mean_obs)
    use commondata, only: commondata_mean_obs => mean_obs
    implicit none
    real(8), intent(out) :: f90wrap_mean_obs
    
    f90wrap_mean_obs = commondata_mean_obs
end subroutine f90wrap_commondata__get__mean_obs

subroutine f90wrap_commondata__set__mean_obs(f90wrap_mean_obs)
    use commondata, only: commondata_mean_obs => mean_obs
    implicit none
    real(8), intent(in) :: f90wrap_mean_obs
    
    commondata_mean_obs = f90wrap_mean_obs
end subroutine f90wrap_commondata__set__mean_obs

subroutine f90wrap_commondata__get__TSS_obs(f90wrap_TSS_obs)
    use commondata, only: commondata_TSS_obs => TSS_obs
    implicit none
    real(8), intent(out) :: f90wrap_TSS_obs
    
    f90wrap_TSS_obs = commondata_TSS_obs
end subroutine f90wrap_commondata__get__TSS_obs

subroutine f90wrap_commondata__set__TSS_obs(f90wrap_TSS_obs)
    use commondata, only: commondata_TSS_obs => TSS_obs
    implicit none
    real(8), intent(in) :: f90wrap_TSS_obs
    
    commondata_TSS_obs = f90wrap_TSS_obs
end subroutine f90wrap_commondata__set__TSS_obs

subroutine f90wrap_commondata__get__std_obs(f90wrap_std_obs)
    use commondata, only: commondata_std_obs => std_obs
    implicit none
    real(8), intent(out) :: f90wrap_std_obs
    
    f90wrap_std_obs = commondata_std_obs
end subroutine f90wrap_commondata__get__std_obs

subroutine f90wrap_commondata__set__std_obs(f90wrap_std_obs)
    use commondata, only: commondata_std_obs => std_obs
    implicit none
    real(8), intent(in) :: f90wrap_std_obs
    
    commondata_std_obs = f90wrap_std_obs
end subroutine f90wrap_commondata__set__std_obs

subroutine f90wrap_commondata__get__mineff_index(f90wrap_mineff_index)
    use commondata, only: commondata_mineff_index => mineff_index
    implicit none
    real(8), intent(out) :: f90wrap_mineff_index
    
    f90wrap_mineff_index = commondata_mineff_index
end subroutine f90wrap_commondata__get__mineff_index

subroutine f90wrap_commondata__set__mineff_index(f90wrap_mineff_index)
    use commondata, only: commondata_mineff_index => mineff_index
    implicit none
    real(8), intent(in) :: f90wrap_mineff_index
    
    commondata_mineff_index = f90wrap_mineff_index
end subroutine f90wrap_commondata__set__mineff_index

subroutine f90wrap_commondata__get__finalfit(f90wrap_finalfit)
    use commondata, only: commondata_finalfit => finalfit
    implicit none
    real(8), intent(out) :: f90wrap_finalfit
    
    f90wrap_finalfit = commondata_finalfit
end subroutine f90wrap_commondata__get__finalfit

subroutine f90wrap_commondata__set__finalfit(f90wrap_finalfit)
    use commondata, only: commondata_finalfit => finalfit
    implicit none
    real(8), intent(in) :: f90wrap_finalfit
    
    commondata_finalfit = f90wrap_finalfit
end subroutine f90wrap_commondata__set__finalfit

subroutine f90wrap_commondata__array__tt(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_tt => tt
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_tt)) then
        dshape(1:1) = shape(commondata_tt)
        dloc = loc(commondata_tt)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__tt

subroutine f90wrap_commondata__array__Tair(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_tair => tair
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_Tair)) then
        dshape(1:1) = shape(commondata_Tair)
        dloc = loc(commondata_Tair)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__Tair

subroutine f90wrap_commondata__array__Twat_obs_agg(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_twat_obs_agg => twat_obs_agg
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_Twat_obs_agg)) then
        dshape(1:1) = shape(commondata_Twat_obs_agg)
        dloc = loc(commondata_Twat_obs_agg)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__Twat_obs_agg

subroutine f90wrap_commondata__array__Twat_obs(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_twat_obs => twat_obs
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_Twat_obs)) then
        dshape(1:1) = shape(commondata_Twat_obs)
        dloc = loc(commondata_Twat_obs)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__Twat_obs

subroutine f90wrap_commondata__array__Q(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_q => q
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_Q)) then
        dshape(1:1) = shape(commondata_Q)
        dloc = loc(commondata_Q)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__Q

subroutine f90wrap_commondata__array__Twat_mod(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_twat_mod => twat_mod
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_Twat_mod)) then
        dshape(1:1) = shape(commondata_Twat_mod)
        dloc = loc(commondata_Twat_mod)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__Twat_mod

subroutine f90wrap_commondata__array__Twat_mod_agg(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_twat_mod_agg => twat_mod_agg
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_Twat_mod_agg)) then
        dshape(1:1) = shape(commondata_Twat_mod_agg)
        dloc = loc(commondata_Twat_mod_agg)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__Twat_mod_agg

subroutine f90wrap_commondata__array__parmin(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_parmin => parmin
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_parmin)) then
        dshape(1:1) = shape(commondata_parmin)
        dloc = loc(commondata_parmin)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__parmin

subroutine f90wrap_commondata__array__parmax(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_parmax => parmax
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_parmax)) then
        dshape(1:1) = shape(commondata_parmax)
        dloc = loc(commondata_parmax)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__parmax

subroutine f90wrap_commondata__array__par(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_par => par
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_par)) then
        dshape(1:1) = shape(commondata_par)
        dloc = loc(commondata_par)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__par

subroutine f90wrap_commondata__array__par_best(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_par_best => par_best
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    if (allocated(commondata_par_best)) then
        dshape(1:1) = shape(commondata_par_best)
        dloc = loc(commondata_par_best)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__par_best

subroutine f90wrap_commondata__get__folder(f90wrap_folder)
    use commondata, only: commondata_folder => folder
    implicit none
    character(100), intent(out) :: f90wrap_folder
    
    f90wrap_folder = commondata_folder
end subroutine f90wrap_commondata__get__folder

subroutine f90wrap_commondata__set__folder(f90wrap_folder)
    use commondata, only: commondata_folder => folder
    implicit none
    character(100), intent(in) :: f90wrap_folder
    
    commondata_folder = f90wrap_folder
end subroutine f90wrap_commondata__set__folder

subroutine f90wrap_commondata__get__inputfile(f90wrap_inputfile)
    use commondata, only: commondata_inputfile => inputfile
    implicit none
    character(30), intent(out) :: f90wrap_inputfile
    
    f90wrap_inputfile = commondata_inputfile
end subroutine f90wrap_commondata__get__inputfile

subroutine f90wrap_commondata__set__inputfile(f90wrap_inputfile)
    use commondata, only: commondata_inputfile => inputfile
    implicit none
    character(30), intent(in) :: f90wrap_inputfile
    
    commondata_inputfile = f90wrap_inputfile
end subroutine f90wrap_commondata__set__inputfile

subroutine f90wrap_commondata__get__name(f90wrap_name)
    use commondata, only: commondata_name => name
    implicit none
    character(30), intent(out) :: f90wrap_name
    
    f90wrap_name = commondata_name
end subroutine f90wrap_commondata__get__name

subroutine f90wrap_commondata__set__name(f90wrap_name)
    use commondata, only: commondata_name => name
    implicit none
    character(30), intent(in) :: f90wrap_name
    
    commondata_name = f90wrap_name
end subroutine f90wrap_commondata__set__name

subroutine f90wrap_commondata__get__air_station(f90wrap_air_station)
    use commondata, only: commondata_air_station => air_station
    implicit none
    character(30), intent(out) :: f90wrap_air_station
    
    f90wrap_air_station = commondata_air_station
end subroutine f90wrap_commondata__get__air_station

subroutine f90wrap_commondata__set__air_station(f90wrap_air_station)
    use commondata, only: commondata_air_station => air_station
    implicit none
    character(30), intent(in) :: f90wrap_air_station
    
    commondata_air_station = f90wrap_air_station
end subroutine f90wrap_commondata__set__air_station

subroutine f90wrap_commondata__get__water_station(f90wrap_water_station)
    use commondata, only: commondata_water_station => water_station
    implicit none
    character(30), intent(out) :: f90wrap_water_station
    
    f90wrap_water_station = commondata_water_station
end subroutine f90wrap_commondata__get__water_station

subroutine f90wrap_commondata__set__water_station(f90wrap_water_station)
    use commondata, only: commondata_water_station => water_station
    implicit none
    character(30), intent(in) :: f90wrap_water_station
    
    commondata_water_station = f90wrap_water_station
end subroutine f90wrap_commondata__set__water_station

subroutine f90wrap_commondata__get__station(f90wrap_station)
    use commondata, only: commondata_station => station
    implicit none
    character(30), intent(out) :: f90wrap_station
    
    f90wrap_station = commondata_station
end subroutine f90wrap_commondata__get__station

subroutine f90wrap_commondata__set__station(f90wrap_station)
    use commondata, only: commondata_station => station
    implicit none
    character(30), intent(in) :: f90wrap_station
    
    commondata_station = f90wrap_station
end subroutine f90wrap_commondata__set__station

subroutine f90wrap_commondata__get__model(f90wrap_model)
    use commondata, only: commondata_model => model
    implicit none
    character(30), intent(out) :: f90wrap_model
    
    f90wrap_model = commondata_model
end subroutine f90wrap_commondata__get__model

subroutine f90wrap_commondata__set__model(f90wrap_model)
    use commondata, only: commondata_model => model
    implicit none
    character(30), intent(in) :: f90wrap_model
    
    commondata_model = f90wrap_model
end subroutine f90wrap_commondata__set__model

subroutine f90wrap_commondata__get__runmode(f90wrap_runmode)
    use commondata, only: commondata_runmode => runmode
    implicit none
    character(30), intent(out) :: f90wrap_runmode
    
    f90wrap_runmode = commondata_runmode
end subroutine f90wrap_commondata__get__runmode

subroutine f90wrap_commondata__set__runmode(f90wrap_runmode)
    use commondata, only: commondata_runmode => runmode
    implicit none
    character(30), intent(in) :: f90wrap_runmode
    
    commondata_runmode = f90wrap_runmode
end subroutine f90wrap_commondata__set__runmode

subroutine f90wrap_commondata__get__series(f90wrap_series)
    use commondata, only: commondata_series => series
    implicit none
    character(1), intent(out) :: f90wrap_series
    
    f90wrap_series = commondata_series
end subroutine f90wrap_commondata__get__series

subroutine f90wrap_commondata__set__series(f90wrap_series)
    use commondata, only: commondata_series => series
    implicit none
    character(1), intent(in) :: f90wrap_series
    
    commondata_series = f90wrap_series
end subroutine f90wrap_commondata__set__series

subroutine f90wrap_commondata__get__unit(f90wrap_unit)
    use commondata, only: commondata_unit => unit
    implicit none
    character(1), intent(out) :: f90wrap_unit
    
    f90wrap_unit = commondata_unit
end subroutine f90wrap_commondata__get__unit

subroutine f90wrap_commondata__set__unit(f90wrap_unit)
    use commondata, only: commondata_unit => unit
    implicit none
    character(1), intent(in) :: f90wrap_unit
    
    commondata_unit = f90wrap_unit
end subroutine f90wrap_commondata__set__unit

subroutine f90wrap_commondata__get__time_res(f90wrap_time_res)
    use commondata, only: commondata_time_res => time_res
    implicit none
    character(3), intent(out) :: f90wrap_time_res
    
    f90wrap_time_res = commondata_time_res
end subroutine f90wrap_commondata__get__time_res

subroutine f90wrap_commondata__set__time_res(f90wrap_time_res)
    use commondata, only: commondata_time_res => time_res
    implicit none
    character(3), intent(in) :: f90wrap_time_res
    
    commondata_time_res = f90wrap_time_res
end subroutine f90wrap_commondata__set__time_res

subroutine f90wrap_commondata__get__fun_obj(f90wrap_fun_obj)
    use commondata, only: commondata_fun_obj => fun_obj
    implicit none
    character(3), intent(out) :: f90wrap_fun_obj
    
    f90wrap_fun_obj = commondata_fun_obj
end subroutine f90wrap_commondata__get__fun_obj

subroutine f90wrap_commondata__set__fun_obj(f90wrap_fun_obj)
    use commondata, only: commondata_fun_obj => fun_obj
    implicit none
    character(3), intent(in) :: f90wrap_fun_obj
    
    commondata_fun_obj = f90wrap_fun_obj
end subroutine f90wrap_commondata__set__fun_obj

subroutine f90wrap_commondata__get__mod_num(f90wrap_mod_num)
    use commondata, only: commondata_mod_num => mod_num
    implicit none
    character(3), intent(out) :: f90wrap_mod_num
    
    f90wrap_mod_num = commondata_mod_num
end subroutine f90wrap_commondata__get__mod_num

subroutine f90wrap_commondata__set__mod_num(f90wrap_mod_num)
    use commondata, only: commondata_mod_num => mod_num
    implicit none
    character(3), intent(in) :: f90wrap_mod_num
    
    commondata_mod_num = f90wrap_mod_num
end subroutine f90wrap_commondata__set__mod_num

subroutine f90wrap_commondata__array__flag_par(dummy_this, nd, dtype, dshape, dloc)
    use commondata, only: commondata_flag_par => flag_par
    use, intrinsic :: iso_c_binding, only : c_int
    implicit none
    integer, intent(in) :: dummy_this(2)
    integer(c_int), intent(out) :: nd
    integer(c_int), intent(out) :: dtype
    integer(c_int), dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 5
    if (allocated(commondata_flag_par)) then
        dshape(1:1) = shape(commondata_flag_par)
        dloc = loc(commondata_flag_par)
    else
        dloc = 0
    end if
end subroutine f90wrap_commondata__array__flag_par

subroutine f90wrap_commondata__get__n_run(f90wrap_n_run)
    use commondata, only: commondata_n_run => n_run
    implicit none
    integer, intent(out) :: f90wrap_n_run
    
    f90wrap_n_run = commondata_n_run
end subroutine f90wrap_commondata__get__n_run

subroutine f90wrap_commondata__set__n_run(f90wrap_n_run)
    use commondata, only: commondata_n_run => n_run
    implicit none
    integer, intent(in) :: f90wrap_n_run
    
    commondata_n_run = f90wrap_n_run
end subroutine f90wrap_commondata__set__n_run

subroutine f90wrap_commondata__get__n_particles(f90wrap_n_particles)
    use commondata, only: commondata_n_particles => n_particles
    implicit none
    integer, intent(out) :: f90wrap_n_particles
    
    f90wrap_n_particles = commondata_n_particles
end subroutine f90wrap_commondata__get__n_particles

subroutine f90wrap_commondata__set__n_particles(f90wrap_n_particles)
    use commondata, only: commondata_n_particles => n_particles
    implicit none
    integer, intent(in) :: f90wrap_n_particles
    
    commondata_n_particles = f90wrap_n_particles
end subroutine f90wrap_commondata__set__n_particles

subroutine f90wrap_commondata__get__c1(f90wrap_c1)
    use commondata, only: commondata_c1 => c1
    implicit none
    real(8), intent(out) :: f90wrap_c1
    
    f90wrap_c1 = commondata_c1
end subroutine f90wrap_commondata__get__c1

subroutine f90wrap_commondata__set__c1(f90wrap_c1)
    use commondata, only: commondata_c1 => c1
    implicit none
    real(8), intent(in) :: f90wrap_c1
    
    commondata_c1 = f90wrap_c1
end subroutine f90wrap_commondata__set__c1

subroutine f90wrap_commondata__get__c2(f90wrap_c2)
    use commondata, only: commondata_c2 => c2
    implicit none
    real(8), intent(out) :: f90wrap_c2
    
    f90wrap_c2 = commondata_c2
end subroutine f90wrap_commondata__get__c2

subroutine f90wrap_commondata__set__c2(f90wrap_c2)
    use commondata, only: commondata_c2 => c2
    implicit none
    real(8), intent(in) :: f90wrap_c2
    
    commondata_c2 = f90wrap_c2
end subroutine f90wrap_commondata__set__c2

subroutine f90wrap_commondata__get__wmin(f90wrap_wmin)
    use commondata, only: commondata_wmin => wmin
    implicit none
    real(8), intent(out) :: f90wrap_wmin
    
    f90wrap_wmin = commondata_wmin
end subroutine f90wrap_commondata__get__wmin

subroutine f90wrap_commondata__set__wmin(f90wrap_wmin)
    use commondata, only: commondata_wmin => wmin
    implicit none
    real(8), intent(in) :: f90wrap_wmin
    
    commondata_wmin = f90wrap_wmin
end subroutine f90wrap_commondata__set__wmin

subroutine f90wrap_commondata__get__wmax(f90wrap_wmax)
    use commondata, only: commondata_wmax => wmax
    implicit none
    real(8), intent(out) :: f90wrap_wmax
    
    f90wrap_wmax = commondata_wmax
end subroutine f90wrap_commondata__get__wmax

subroutine f90wrap_commondata__set__wmax(f90wrap_wmax)
    use commondata, only: commondata_wmax => wmax
    implicit none
    real(8), intent(in) :: f90wrap_wmax
    
    commondata_wmax = f90wrap_wmax
end subroutine f90wrap_commondata__set__wmax

! End of module commondata defined in file AIR2STREAM_MODULES.f90

