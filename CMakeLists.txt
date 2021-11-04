cmake_minimum_required(VERSION 3.10)

project(mklfs)

add_executable(
    ${PROJECT_NAME}
    mklfs.c
    lfs/lfs.c
    lfs/lfs_util.c
)

execute_process(COMMAND git describe --always OUTPUT_VARIABLE VERSION OUTPUT_STRIP_TRAILING_WHITESPACE)
target_compile_options(${PROJECT_NAME} PRIVATE -DVERSION="${VERSION}")

if(WIN32)
    target_compile_options(${PROJECT_NAME} PRIVATE -DWINDOWS)
elseif(APPLE)
    target_compile_options(${PROJECT_NAME} PRIVATE -DOSX)
elseif(UNIX)
    target_compile_options(${PROJECT_NAME} PRIVATE -DLINUX)
endif()

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
