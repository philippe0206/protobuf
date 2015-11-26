set(CPACK_PACKAGE_VENDOR "Google")
set(CPACK_PACKAGE_CONTACT "Arjen Hiemstra <a.hiemstra@ultimaker.com>")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Protobuf communication framework")
set(CPACK_PACKAGE_VERSION_MAJOR 3)
set(CPACK_PACKAGE_VERSION_MINOR 0)
set(CPACK_PACKAGE_VERSION_PATCH 0)
set(CPACK_PACKAGE_VERSION_REVISION 1)
set(CPACK_GENERATOR "DEB")

set(DEB_DEPENDS
    "python3 (>= 3.4.0)"
    "libgcc1 (>= 4.9.0)"
    "libstdc++6 (>= 4.9.0)"
    "python3-pkg-resources (>= 5.5.1)"
)
string(REPLACE ";" ", " DEB_DEPENDS "${DEB_DEPENDS}")
set(CPACK_DEBIAN_PACKAGE_DEPENDS ${DEB_DEPENDS})

include(CPack)

