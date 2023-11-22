
SUBROUTINE set_calibration_param( &
    name_p,  &             ! name of folder
    air_station_p,  &      ! name/ID of the air station
    water_station_p,  &    ! name/ID of the water station
    series_p,  &           ! type of series: c=continuous, m=mean year
    time_res_p,  &         ! time resolution: 1d=daily, nw=n weeks (n=1,2,...), 1m=monthly
    version_p,  &          ! version: 3,4,5,7,8 parameters
    Tice_cover_p,  &       ! Threshold temperature for ice formation
    fun_obj_p,  &          ! objective function: KGE, NSE, RMS
    mod_num_p,  &          ! mod_num :   RK4 , EUL , RK2 , CRN
    runmode_p,  &          ! optimization algorithm: PSO or LATHYP
    prc_p,  &              ! minimum percentage of data in input: 0...1
    n_run_p,  &            ! number of iterations
    mineff_index_p  &      ! index for the minimum efficiency that the code memorizes
)

    USE commondata
    IMPLICIT NONE

    CHARACTER(LEN=30), intent(in) :: name_p, air_station_p, water_station_p, runmode_p
    CHARACTER(LEN=3), intent(in) :: time_res_p, fun_obj_p, mod_num_p
    REAL(KIND=8), intent(in) :: Tice_cover_p, prc_p, mineff_index_p
    INTEGER, intent(in) :: n_run_p, version_p
    CHARACTER(LEN=1), intent(in) :: series_p

    name=name_p
    air_station=air_station_p
    water_station=water_station_p
    series=series_p
    time_res=time_res_p
    version=version_p
    Tice_cover=Tice_cover_p
    fun_obj=fun_obj_p
    mod_num=mod_num_p
    runmode=runmode_p
    prc=prc_p
    n_run=n_run_p
    mineff_index=mineff_index_p

    station=TRIM(air_station)//'_'//TRIM(water_station)
        
    WRITE(*,*) 'Objective function ',fun_obj

RETURN
END

SUBROUTINE set_model_parameters()
