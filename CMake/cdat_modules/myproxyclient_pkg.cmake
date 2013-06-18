set(MYPROXYCLIENT_MAJOR_SRC 1)
set(MYPROXYCLIENT_MINOR_SRC 3)
set(MYPROXYCLIENT_PATCH_SRC 0)

set (nm MYPROXYCLIENT)
string(TOUPPER ${nm} uc_nm)
set(${uc_nm}_VERSION ${${nm}_MAJOR_SRC}.${${nm}_MINOR_SRC}.${${nm}_PATCH_SRC})
set(MYPROXYCLIENT_SOURCE ${LLNL_URL}/MyProxyClient-${MYPROXYCLIENT_VERSION}.tar.gz)
set(MYPROXYCLIENT_MD5 829a299157f91f8ff8a6e5bc8ec1c09c )

add_cdat_package_dependent(MyProxyClient "" "" ON "CDAT_BUILD_WO_ESGF" OFF)
