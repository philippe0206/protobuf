set(CPACK_PACKAGE_VENDOR "Google")
set(CPACK_PACKAGE_CONTACT "Arjen Hiemstra <a.hiemstra@ultimaker.com>")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Protobuf communication framework")
set(CPACK_PACKAGE_VERSION_MAJOR 3)
set(CPACK_PACKAGE_VERSION_MINOR 0)
set(CPACK_PACKAGE_VERSION_PATCH 0)
set(CPACK_SOURCE_GENERATOR "DEB;RPM")
set(CPACK_INSTALL_CMAKE_PROJECTS 
						"${PROJECT_BINARY_DIR};Protobuf;protobuf_lib;/")

set(RPM_REQUIRES
    "python3 (>= 3.4.0)"
    "libgcc (>= 4.9.0)"
    "libstdc++ (>= 4.9.0)"
)
string(REPLACE ";" "," RPM_REQUIRES "${RPM_REQUIRES}")
set(CPACK_RPM_PACKAGE_REQUIRES ${RPM_REQUIRES})

set(DEB_DEPENDS
    "python3 (>= 3.4.0)"
    "libgcc1 (>= 4.9.0)"
    "libstdc++6 (>= 4.9.0)"
)
string(REPLACE ";" ", " DEB_DEPENDS "${DEB_DEPENDS}")
set(CPACK_DEBIAN_PACKAGE_DEPENDS ${DEB_DEPENDS})

include(CPack)
