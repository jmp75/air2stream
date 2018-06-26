# CMake project file for air2water
set(TARGET air2stream)
project (${TARGET})

cmake_minimum_required (VERSION 2.8)

enable_language (Fortran)

# detect operating system and host processor
message(STATUS "We are on a ${CMAKE_SYSTEM_NAME} system")
message(STATUS "The host processor is ${CMAKE_HOST_SYSTEM_PROCESSOR}")

# this is where we will place the Fortran module files
set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/modules)

# set compiler-specific flags
message(STATUS "I will use the ${CMAKE_Fortran_COMPILER_ID} compiler")
if(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
    set(CMAKE_Fortran_FLAGS         "${CMAKE_Fortran_FLAGS} -fpp -Wall -static")
    set(CMAKE_Fortran_FLAGS_DEBUG   "-g -traceback")
    set(CMAKE_Fortran_FLAGS_RELEASE "-O3 -ip -xHOST")
endif()

if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)
    set(CMAKE_Fortran_FLAGS         "${CMAKE_Fortran_FLAGS} -ffree-form -ffree-line-length-0 -cpp -Wall -static")
    set(CMAKE_Fortran_FLAGS_DEBUG   "-O0 -g3")
    set(CMAKE_Fortran_FLAGS_RELEASE "-Ofast -ffast-math -march=native")
endif()

# we set the build to Release type
set(CMAKE_BUILD_TYPE "Release")

add_executable(
    ${TARGET}
    AIR2STREAM_MAIN.f90
    AIR2STREAM_MODULES.f90
    AIR2STREAM_READ.f90
    AIR2STREAM_RUNMODE.f90
    AIR2STREAM_SUBROUTINES.f90
    )
