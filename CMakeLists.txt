cmake_minimum_required(VERSION 3.0.0)
project(clox VERSION 0.1.0)

function(include_source REQUIRED_ARG REQUIRED_FILE)
    set(${REQUIRED_ARG} ${${REQUIRED_ARG}} "${REQUIRED_FILE}.h" "${REQUIRED_FILE}.c" PARENT_SCOPE)    
endfunction()

set(clox_source src/main.c)
include_source(clox_source "src/vm")
include_source(clox_source "src/chunk")
include_source(clox_source "src/memory")
include_source(clox_source "src/debug")
include_source(clox_source "src/value")
include_source(clox_source "src/compiler")
include_source(clox_source "src/scanner")
include_source(clox_source "src/object")

add_executable(clox ${clox_source})

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)
