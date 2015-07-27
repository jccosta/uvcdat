set(SCIPY_MAJOR 0)
set(SCIPY_MINOR 16)
set(SCIPY_PATCH 0)
set(SCIPY_MAJOR_SRC 0)
set(SCIPY_MINOR_SRC 16)
set(SCIPY_PATCH_SRC 0)
set(SCIPY_URL ${LLNL_URL})
set(SCIPY_GZ scipy-${SCIPY_MAJOR_SRC}.${SCIPY_MINOR_SRC}.${SCIPY_PATCH_SRC}.tar.gz)
set(SCIPY_MD5 f721ae2746dcbdd923665ba73d0ba3df )
set(SCIPY_SOURCE ${SCIPY_URL}/${SCIPY_GZ})

set (nm SCIPY)
string(TOUPPER ${nm} uc_nm)
set(${uc_nm}_VERSION ${${nm}_MAJOR_SRC}.${${nm}_MINOR_SRC}.${${nm}_PATCH_SRC})

add_cdat_package_dependent(SCIPY "" "" OFF "CDAT_BUILD_LEAN" ON)
#if (CDAT_BUILD_ALL)
#  add_cdat_package(scipy "" "" ON)
#else()
#  add_cdat_package(scipy "" "" OFF)
#endif()
