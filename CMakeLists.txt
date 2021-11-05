cmake_minimum_required(VERSION 3.10)

project(mklfs)

add_executable(
    ${PROJECT_NAME}
    src/mklfs.c
    lfs/lfs.c
    lfs/lfs_util.c
)

target_include_directories(${PROJECT_NAME} PRIVATE lfs)

execute_process(COMMAND git describe --tags --abbrev=0 HEAD OUTPUT_VARIABLE GIT_TAG OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND git rev-parse --short HEAD OUTPUT_VARIABLE GIT_COMMIT OUTPUT_STRIP_TRAILING_WHITESPACE)
target_compile_options(
    ${PROJECT_NAME} PRIVATE
    -DGIT_TAG="${GIT_TAG}"
    -DGIT_COMMIT="${GIT_COMMIT}"
)

if(WIN32)
    target_compile_options(${PROJECT_NAME} PRIVATE -DWINDOWS)
elseif(APPLE)
    target_compile_options(${PROJECT_NAME} PRIVATE -DOSX)
elseif(UNIX)
    target_compile_options(${PROJECT_NAME} PRIVATE -DLINUX)
endif()

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
