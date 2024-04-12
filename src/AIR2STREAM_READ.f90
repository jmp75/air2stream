SUBROUTINE print_Help
    WRITE(*,*)''
    WRITE(*,*)'usage:'
    WRITE(*,*)'   air2stream [options ...]'
    WRITE(*,*)''
    WRITE(*,*)'options:'
    WRITE(*,*)'   -f <string> read input data from <string>'
    WRITE(*,*)'   -h          display this information'
    WRITE(*,*)'    in case of no arguments, default inputfile <input.txt> is used'
    WRITE(*,*)''
RETURN
END SUBROUTINE

SUBROUTINE print_ByeBye
    WRITE(*,*)"***************************************************************************"
    WRITE(*,*)"*   that's it! (mailto: s.piccolroaz@unitn.it, marco.toffolon@unitn.it)   *"
    WRITE(*,*)"***************************************************************************"
RETURN
END SUBROUTINE


!-------------------------------------------------------------------------------
!               PARSE COMMAND DATA
!-------------------------------------------------------------------------------
SUBROUTINE parse_command_args

USE commondata

IMPLICIT NONE
INTEGER:: cnt, len, status
character:: c*30
LOGICAL:: knownArg = .true.

cnt = command_argument_count ()

IF (cnt == 0) THEN
    inputfile = 'input.txt'
    WRITE (*,*) 'default input file: ', inputfile
ELSEIF (cnt == 1) THEN
    CALL get_command_argument (cnt, c, len, status)
    IF ((status .eq. 0).and.( (c (1:len) .eq. "-h").or.(c (1:len) .eq. "--help") )) THEN
        CALL print_Help
        CALL print_ByeBye
        STOP
    ELSE
        knownArg = .false.
    ENDIF
ELSEIF (cnt == 2) THEN
    CALL get_command_argument (1, c, len, status)
    IF ((status .eq. 0).and.(c (1:len) .eq. "-f")) THEN
        CALL get_command_argument (2, c, len, status)
        inputfile = c(1:len)
        WRITE (*,*) 'input file: ', inputfile
    ELSE
        knownArg = .false.
    ENDIF
ENDIF

IF (knownArg .eqv. .false.) THEN
    WRITE (*,*) ' Sorry, but the given command arguments are not recognized... please try with [-h] flag.'
    CALL print_ByeBye
    STOP
ENDIF

RETURN
END


SUBROUTINE read_calibration

USE commondata

IMPLICIT NONE
INTEGER:: i !, status
CHARACTER(LEN=1) :: string

! read input information
OPEN(unit=1,file=inputfile,status='old',action='read')
READ(1,*)                           ! header
READ(1,*) name                      ! name of folder
READ(1,*) air_station               ! name/ID of the air station
READ(1,*) water_station             ! name/ID of the water station
READ(1,*) series                    ! type of series: c=continuous, m=mean year
READ(1,*) time_res                  ! time resolution: 1d=daily, nw=n weeks (n=1,2,...), 1m=monthly
READ(1,*) version                   ! version: 3,4,5,7,8 parameters
READ(1,*) Tice_cover                ! Threshold temperature for ice formation
READ(1,*) fun_obj                   ! objective function: KGE, NSE, RMS
READ(1,*) mod_num                   ! mod_num :   RK4 , EUL , RK2 , CRN
READ(1,*) runmode                   ! optimization algorithm: PSO or LATHYP
READ(1,*) prc                       ! minimum percentage of data in input: 0...1
READ(1,*) n_run                     ! number of iterations
READ(1,*) mineff_index              ! index for the minimum efficiency that the code memorizes
CLOSE(1)


station=TRIM(air_station)//'_'//TRIM(water_station)

WRITE(string,'(i1)' ) version

folder = TRIM(name)//'/output_'//string//'/'

! subfolder creation is system-specific
#ifdef _WIN32
  call system('mkdir ' // TRIM(name)//'\output_'//TRIM(version)//'\')
#else
  call system('mkdir -p ' // folder)
#endif
!result=makedirqq(folder)

WRITE(*,*) 'Objective function ',fun_obj

IF (runmode .eq. 'FORWARD') THEN
    OPEN(unit=1,file=TRIM(name)//'/parameters_forward.txt',status='old',action='read')
    READ(1,*) (par(i), i=1,n_par)
ELSE IF (runmode .eq. 'PSO') THEN
    ! read PSO parameters
    OPEN(unit=1,file='PSO.txt',status='old',action='read')
    READ(1,*)           ! header
    READ(1,*) n_particles
    READ(1,*) c1,c2
    READ(1,*) wmax,wmin
    CLOSE(1)
END IF

IF (runmode .eq. 'PSO' .or. runmode .eq. 'LATHYP') THEN
    ! read model parameters
    OPEN(unit=1,file=TRIM(name)//'/parameters.txt',status='old',action='read')

    READ(1,*) (parmin(i),i=1,n_par);
    READ(1,*) (parmax(i),i=1,n_par);

! parameters that are not used are zeroed
    flag_par=.true.
    IF (version == 3) THEN                                      !air2stream with 3 parameters
        parmin(4)=0;    parmax(4)=0;    flag_par(4)=.false.;
        parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
        parmin(6)=0;    parmax(6)=0;    flag_par(6)=.false.;
        parmin(7)=0;    parmax(7)=0;    flag_par(7)=.false.;
        parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    END IF
    IF (version == 4) THEN                                      !air2stream with 4 parameters
         parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
         parmin(6)=0;    parmax(6)=0;    flag_par(6)=.false.;
         parmin(7)=0;    parmax(7)=0;    flag_par(7)=.false.;
         parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    END IF
    IF (version == 5) THEN                                      !air2stream with 5 parameters
        parmin(4)=0;    parmax(4)=0;    flag_par(4)=.false.;
        parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
        parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    ENDIF
    IF (version == 7) THEN                                      !air2stream with 7 parameters
         parmin(4)=0;    parmax(4)=0;    flag_par(4)=.false.;
    END IF
    IF (version == 4) THEN                                      !air2stream with 8 parameters
         parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
         parmin(6)=0;    parmax(6)=0;    flag_par(6)=.false.;
         parmin(7)=0;    parmax(7)=0;    flag_par(7)=.false.;
         parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    END IF

    CLOSE(1)

    ! write parameters
    OPEN(unit=2,file=TRIM(folder)//'/parameters.txt',status='unknown',action='write')
    WRITE(2,'(A,I2)') ' number of parameters: ', n_par
    WRITE(2,'(*(F10.5,1x))') (parmin(i),i=1,n_par)
    WRITE(2,'(*(F10.5,1x))') (parmax(i),i=1,n_par)
    CLOSE(2)

END IF

! read T series (calibration)
CALL read_Tseries('c')

RETURN
END


!-------------------------------------------------------------------------------
!         sets feasible parameters to match the model version               
!-------------------------------------------------------------------------------
SUBROUTINE feasible_parameters_for_version
    USE commondata

    ! parameters that are not used are zeroed
    flag_par=.true.
    IF (version == 3) THEN                                      !air2stream with 3 parameters
        parmin(4)=0;    parmax(4)=0;    flag_par(4)=.false.;
        parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
        parmin(6)=0;    parmax(6)=0;    flag_par(6)=.false.;
        parmin(7)=0;    parmax(7)=0;    flag_par(7)=.false.;
        parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    END IF
    IF (version == 4) THEN                                      !air2stream with 4 parameters
        parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
        parmin(6)=0;    parmax(6)=0;    flag_par(6)=.false.;
        parmin(7)=0;    parmax(7)=0;    flag_par(7)=.false.;
        parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    END IF
    IF (version == 5) THEN                                      !air2stream with 5 parameters
        parmin(4)=0;    parmax(4)=0;    flag_par(4)=.false.;
        parmin(5)=0;    parmax(5)=0;    flag_par(5)=.false.;
        parmin(8)=0;    parmax(8)=0;    flag_par(8)=.false.;
    ENDIF
    IF (version == 7) THEN                                      !air2stream with 7 parameters
        parmin(4)=0;    parmax(4)=0;    flag_par(4)=.false.;
    END IF

END


!-------------------------------------------------------------------------------
!               deallocates all arrays, clean slate to set new data inputs
!-------------------------------------------------------------------------------
SUBROUTINE deallocate_input_arrays

    USE commondata
    
    IMPLICIT NONE
    
    ! tests that these are not already unallocated; may matter or not not sure.
    if (ALLOCATED(Twat_obs_agg)) THEN

        DEALLOCATE(date, tt, Tair, Twat_obs, Twat_obs_agg, Twat_mod, Twat_mod_agg, Q)
    END IF
    
    RETURN
END

SUBROUTINE deallocate_i_arrays

    USE commondata
    
    IMPLICIT NONE
    
    ! tests that these are not already unallocated; may matter or not not sure.
    if (ALLOCATED(I_pos)) THEN
        DEALLOCATE(I_pos)
    END IF
    if (ALLOCATED(I_inf)) THEN
        DEALLOCATE(I_inf)
    END IF
    
    RETURN
END

SUBROUTINE init_param_arrays()
    USE commondata
    IMPLICIT NONE
    INTEGER :: status
    ! allocation of parameter matrices
    ALLOCATE(parmin(n_par),stat=status)
    ALLOCATE(parmax(n_par),stat=status)
    ALLOCATE(flag_par(n_par),stat=status)
    ALLOCATE(par(n_par),stat=status)
    ALLOCATE(par_best(n_par),stat=status)
END

SUBROUTINE init_input_arrays(n)
    USE commondata
    IMPLICIT NONE
    INTEGER :: n
    INTEGER :: status
    n_tot=n

    call deallocate_input_arrays()
    ALLOCATE(date(n_tot,3),stat=status)
    ALLOCATE(Tair(n_tot),stat=status)
    ALLOCATE(Twat_obs(n_tot),stat=status)
    ALLOCATE(Twat_obs_agg(n_tot),stat=status)
    ALLOCATE(Twat_mod(n_tot),stat=status)
    ALLOCATE(Twat_mod_agg(n_tot),stat=status)
    ALLOCATE(tt(n_tot),stat=status)
    ALLOCATE(Q(n_tot),stat=status)

END

!-------------------------------------------------------------------------------
!               READ VALIDATION PERIOD
!-------------------------------------------------------------------------------
SUBROUTINE read_validation

USE commondata

IMPLICIT NONE

call deallocate_input_arrays()

! read T series (validation)
CALL read_Tseries('v')

RETURN
END

!-------------------------------------------------------------------------------
!               READ TEMPERATURE FILE
!-------------------------------------------------------------------------------
SUBROUTINE read_Tseries(p)

USE commondata

IMPLICIT NONE

INTEGER :: i, j, k, status
INTEGER :: n_year, leap, year_ini
CHARACTER(LEN=1),INTENT(IN) :: p
CHARACTER(LEN=11) :: period

n_tot=0;

IF (p=='c') THEN
    period='calibration'
ELSE
    period='validation'
END IF

OPEN(unit=3,file=TRIM(name)//'/'//TRIM(station)//'_'//series//p//'.txt',status='unknown',action='read', iostat=status)
openif3: IF (status==0) THEN
    readloop3: DO
        READ(3,*,iostat=status)
        IF (status/=0) EXIT
        n_tot=n_tot+1
    END DO readloop3
    readif3: IF(status>0) THEN
    END IF readif3
END IF openif3
REWIND(3)

! allocation + replication of the 1st year
WRITE(*,1001)  n_tot/365.25,TRIM(period)
1001 FORMAT('There are ',f4.1,' years for ', a12)

IF (p=='v' .and. n_tot .lt. 365) THEN
    WRITE(*,*) 'Validation period < 1 year --> validation is skipped'
    GO TO 100
END IF
n_year=CEILING(n_tot/365.25)
n_tot=n_tot+365             ! the 1st year is replicated. The 1st year is always considered 365 days long

call init_input_arrays(n_tot)

Qmedia = 0.0d0
n_Q = 0

DO i=366,n_tot
    READ(3,*) (date(i,j),j=1,3),Tair(i),Twat_obs(i),Q(i)
    IF ( Q(i) .ne. -999 ) THEN
    n_Q = n_Q + 1
    Qmedia = Qmedia + Q(i)
    END IF
END DO
Qmedia = Qmedia / REAL(n_Q)

year_ini=date(366,1)
date(1:365,:)=-999
Tair(1:365)=Tair(366:730)
Twat_obs(1:365)=Twat_obs(366:730)
Q(1:365)=Q(366:730)

CLOSE(3)

! check leap years + define tt
k=0
DO j=1,365
    tt(k+j)=REAL(j)/365.0d0
END DO
k=365
DO i=1,n_year
    CALL leap_year(year_ini+i-1,leap)
    IF(leap==0) THEN
        DO j=1,365
            IF (k+j .gt. n_tot) THEN
                EXIT
            END IF
            tt(k+j)=REAL(j)/365.0d0
        END DO
        k=k+365
    ELSE
        DO j=1,366
            IF (k+j .gt. n_tot) THEN
                EXIT
            END IF
            tt(k+j)=REAL(j)/366.0d0
        END DO
        k=k+366
    END IF
END DO

100 RETURN
END

!-------------------------------------------------------------------------------
!               Initialise the cryptic tt array
!     **IMPORTANT**. need to initialise an array that holds the 
! fractional calendar year information. This is used in a cosine for one of the algorithm
! Note that some assumptions in this functions are inherited from the air2stream 
! implementation as of 2023 (calibration only, one year warmup)
!  https://jira.csiro.au/projects/HYDROML/issues/HYDROML-19
!-------------------------------------------------------------------------------
SUBROUTINE init_fractional_year_series_calib()

    USE commondata
    
    IMPLICIT NONE
    
    INTEGER :: i, j, k, status
    INTEGER :: n_year, leap, year_ini

    year_ini=date(366,1)
    ! the 1st year is replicated. The 1st year is always considered 365 days long
    n_year=CEILING((n_tot-365)/365.25)
    
    ! check leap years + define tt
    k=0
    DO j=1,365
        tt(k+j)=REAL(j)/365.0d0
    END DO
    k=365
    DO i=1,n_year
        CALL leap_year(year_ini+i-1,leap)
        IF(leap==0) THEN
            DO j=1,365
                IF (k+j .gt. n_tot) THEN
                    EXIT
                END IF
                tt(k+j)=REAL(j)/365.0d0
            END DO
            k=k+365
        ELSE
            DO j=1,366
                IF (k+j .gt. n_tot) THEN
                    EXIT
                END IF
                tt(k+j)=REAL(j)/366.0d0
            END DO
            k=k+366
        END IF
    END DO
    
    RETURN
END