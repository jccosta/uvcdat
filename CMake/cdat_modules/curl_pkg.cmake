set(CURL_MAJOR 7)
set(CURL_MINOR 22)
set(CURL_PATCH 0)
set(CURL_MAJOR_SRC 7)
set(CURL_MINOR_SRC 22)
set(CURL_PATCH_SRC 0)
set(CURL_URL ${LLNL_URL})
set(CURL_GZ curl-${CURL_MAJOR_SRC}.${CURL_MINOR_SRC}.${CURL_PATCH_SRC}.tar.gz)
set(CURL_MD5 e8c36126d21c893f085aca233906b5cc)

set (nm CURL)
string(TOUPPER ${nm} uc_nm)
set(${uc_nm}_VERSION ${${nm}_MAJOR_SRC}.${${nm}_MINOR_SRC}.${${nm}_PATCH_SRC})

add_cdat_package(CURL "" "" "")