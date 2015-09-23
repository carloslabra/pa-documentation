# Return current version string from git

function(git_version_string _var)
  if(NOT GIT_FOUND)
    find_package(Git QUIET)
  endif()
  if(NOT GIT_FOUND)
    return()
  endif()
  execute_process(COMMAND
    ${GIT_EXECUTABLE}
    fetch
    --tags
    origin
    )
  execute_process(COMMAND
    ${GIT_EXECUTABLE}
    describe
    --tags
    --long
    WORKING_DIRECTORY
    ${CMAKE_SOURCE_DIR}
    RESULT_VARIABLE
    res
    OUTPUT_VARIABLE
    out
    ERROR_QUIET
    OUTPUT_STRIP_TRAILING_WHITESPACE)
  if(NOT res EQUAL 0)
    set(out "0")
  endif()
  set(${_var} "${out}" PARENT_SCOPE)
endfunction()
