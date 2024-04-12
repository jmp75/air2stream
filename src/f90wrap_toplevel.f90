subroutine f90wrap_print_help
    implicit none
    external print_help
    
    call print_help()
end subroutine f90wrap_print_help

subroutine f90wrap_print_byebye
    implicit none
    external print_byebye
    
    call print_byebye()
end subroutine f90wrap_print_byebye

subroutine f90wrap_parse_command_args
    implicit none
    external parse_command_args
    
    call parse_command_args()
end subroutine f90wrap_parse_command_args

subroutine f90wrap_read_calibration
    implicit none
    external read_calibration
    
    call read_calibration()
end subroutine f90wrap_read_calibration

subroutine f90wrap_feasible_parameters_for_version
    implicit none
    external feasible_parameters_for_version
    
    call feasible_parameters_for_version()
end subroutine f90wrap_feasible_parameters_for_version

subroutine f90wrap_deallocate_input_arrays
    implicit none
    external deallocate_input_arrays
    
    call deallocate_input_arrays()
end subroutine f90wrap_deallocate_input_arrays

subroutine f90wrap_deallocate_i_arrays
    implicit none
    external deallocate_i_arrays
    
    call deallocate_i_arrays()
end subroutine f90wrap_deallocate_i_arrays

subroutine f90wrap_init_param_arrays
    implicit none
    external init_param_arrays
    
    call init_param_arrays()
end subroutine f90wrap_init_param_arrays

subroutine f90wrap_init_input_arrays(n)
    implicit none
    external init_input_arrays
    
    integer :: n
    call init_input_arrays(n)
end subroutine f90wrap_init_input_arrays

subroutine f90wrap_read_validation
    implicit none
    external read_validation
    
    call read_validation()
end subroutine f90wrap_read_validation

subroutine f90wrap_read_tseries(p)
    implicit none
    external read_tseries
    
    character(1), intent(in) :: p
    call read_tseries(p)
end subroutine f90wrap_read_tseries

subroutine f90wrap_init_fractional_year_series_calib
    implicit none
    external init_fractional_year_series_calib
    
    call init_fractional_year_series_calib()
end subroutine f90wrap_init_fractional_year_series_calib

subroutine f90wrap_forward_mode
    implicit none
    external forward_mode
    
    call forward_mode()
end subroutine f90wrap_forward_mode

subroutine f90wrap_simulation_mode
    implicit none
    external simulation_mode
    
    call simulation_mode()
end subroutine f90wrap_simulation_mode

subroutine f90wrap_pso_mode
    implicit none
    external pso_mode
    
    call pso_mode()
end subroutine f90wrap_pso_mode

subroutine f90wrap_lh_mode
    implicit none
    external lh_mode
    
    call lh_mode()
end subroutine f90wrap_lh_mode

subroutine f90wrap_shuffle(a, n, n0)
    implicit none
    external shuffle
    
    integer, intent(inout), dimension(n0) :: a
    integer, intent(in) :: n
    integer :: n0
    !f2py intent(hide), depend(a) :: n0 = shape(a,0)
    call shuffle(a, n)
end subroutine f90wrap_shuffle

subroutine f90wrap_pso_array_init
    implicit none
    external pso_array_init
    
    call pso_array_init()
end subroutine f90wrap_pso_array_init

subroutine f90wrap_sub_1(ei)
    implicit none
    external sub_1
    
    real(8) :: ei
    call sub_1(ei)
end subroutine f90wrap_sub_1

subroutine f90wrap_call_model
    implicit none
    external call_model
    
    call call_model()
end subroutine f90wrap_call_model

subroutine f90wrap_rk4_air2stream(ta, qq, tw, time, k)
    implicit none
    external rk4_air2stream
    
    real(8), intent(in) :: ta
    real(8), intent(in) :: qq
    real(8), intent(in) :: tw
    real(8), intent(in) :: time
    real(8), intent(out) :: k
    call rk4_air2stream(ta, qq, tw, time, k)
end subroutine f90wrap_rk4_air2stream

subroutine f90wrap_funcobj(ind)
    implicit none
    external funcobj
    
    real(8), intent(out) :: ind
    call funcobj(ind)
end subroutine f90wrap_funcobj

subroutine f90wrap_aggregation
    implicit none
    external aggregation
    
    call aggregation()
end subroutine f90wrap_aggregation

subroutine f90wrap_statis
    implicit none
    external statis
    
    call statis()
end subroutine f90wrap_statis

subroutine f90wrap_forward
    implicit none
    external forward
    
    call forward()
end subroutine f90wrap_forward

subroutine f90wrap_best(fit, part, foptim, n0)
    implicit none
    external best
    
    real(8), intent(in), dimension(n0) :: fit
    integer, intent(out) :: part
    real(8), intent(out) :: foptim
    integer :: n0
    !f2py intent(hide), depend(fit) :: n0 = shape(fit,0)
    call best(fit, part, foptim)
end subroutine f90wrap_best

subroutine f90wrap_leap_year(y, i)
    implicit none
    external leap_year
    
    integer, intent(in) :: y
    integer, intent(out) :: i
    call leap_year(y, i)
end subroutine f90wrap_leap_year

