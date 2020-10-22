cmake_minimum_required(VERSION 3.12)

project(vdb_helloworld)

set(VCPKG_PATH "${PROJECT_SOURCE_DIR}/3rdparty/vcpkg" CACHE STRING "Path to vcpkg")
set(OpenVDB_PATH "${PROJECT_SOURCE_DIR}/3rdparty/openvdb/install" CACHE STRING "Path to OpenVDB")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${OpenVDB_PATH}/lib/cmake/OpenVDB")
set(OpenVDB_INCLUDE_DIR "${OpenVDB_PATH}/include")

file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/src/*.cpp)

file(GLOB DLLS ${VCPKG_PATH}/installed/x64-windows/bin/*.dll)

find_package(OpenVDB REQUIRED)
set(OpenVDB_DLLs "${OpenVDB_INCLUDE_DIR}/../bin/openvdb.dll")

find_package(Blosc REQUIRED)
#set(Blosc_DLLs "${VCPKG_PATH}/packages/blosc_x64-windows/bin/blosc.dll")

find_package(OpenEXR REQUIRED)
#set(OpenEXR_DLLs "${VCPKG_PATH}/packages/openexr_x64-windows/bin/Half-2_5.dll")

find_package(TBB REQUIRED)
#set(Tbb_DLLs "${VCPKG_PATH}/packages/tbb_x64-windows/bin/tbb.dll")

find_package(IlmBase REQUIRED)

#set(Snappy_DLLs "${VCPKG_PATH}/packages/snappy_x64-windows/bin/snappy.dll")
#set(Lz4_DLLs "${VCPKG_PATH}/packages/lz4_x64-windows/bin/lz4.dll")
#set(Zstd_DLLs "${VCPKG_PATH}/packages/zstd_x64-windows/bin/zstd.dll")

set(DLLS ${DLLS}
    ${OpenVDB_DLLs}
)

include_directories(
    ${OpenVDB_INCLUDE_DIRS}
    ${Blosc_INCLUDE_DIRS}
    ${OpenEXR_INCLUDE_DIRS}
    ${Tbb_INCLUDE_DIRS}
    ${IlmBase_INCLUDE_DIRS}
    ${PROJECT_SOURCE_DIR}/include)

add_executable( ${PROJECT_NAME} ${SRC_FILES} )

target_link_libraries( ${PROJECT_NAME} 
    ${OpenVDB_LIBRARIES} 
    ${Blosc_LIBRARIES}
    ${OpenEXR_LIBRARIES} 
    ${Tbb_LIBRARIES}
    ${IlmBase_LIBRARIES}
)

# do the copying
foreach( DLL ${DLLS})
    add_custom_command(
        TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
        "${DLL}"
        $<TARGET_FILE_DIR:${PROJECT_NAME}>
    )
endforeach( DLL )