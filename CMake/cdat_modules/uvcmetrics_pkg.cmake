set (nm UVCMETRICS)
string(TOUPPER ${nm} uc_nm)
set(${uc_nm}_VERSION ${${nm}_TAG})
set(UVCMETRICS_URL ${LLNL_URL})
set(UVCMETRICS_ZIP uvcmetrics-${UVCMETRICS_VERSION}.zip)
#set(UVCMETRICS_SOURCE ${UVCMETRICS_URL}/${UVCMETRICS_ZIP})
set(UVCMETRICS_SOURCE ${GIT_PROTOCOL}github.com/UV-CDAT/uvcmetrics.git )
set(UVCMETRICS_MD5)
set(UVCMETRICS_BRANCH uvcmetrics_testsuite_fixed)

if (NOT CDAT_BUILD_LEAN)
  add_cdat_package(UVCMETRICS "" "" ON)
endif()

