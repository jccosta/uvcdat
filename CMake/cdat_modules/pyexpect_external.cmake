set(Pyexpect_source "${CMAKE_CURRENT_BINARY_DIR}/build/Pyexpect")

ExternalProject_Add(Pyexpect
  DOWNLOAD_DIR ${CDAT_PACKAGE_CACHE_DIR}
  SOURCE_DIR ${Pyexpect_source}
  URL ${PYEXPECT_URL}/${PYEXPECT_GZ}
  URL_MD5 ${PYEXPECT_MD5}
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
  INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install ${PYTHON_EXTRA_PREFIX}
  DEPENDS ${Pyexpect_deps}
  ${ep_log_options}
)
