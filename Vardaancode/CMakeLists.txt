set(CMAKE_CXX_COMPILER "C:\MinGW\bin/g++.exe")

cmake_minimum_required(VERSION 3.15)  # Make sure you have a compatible version of CMake

# Set the project name and version
project(MissionVardaanStudio VERSION 1.0 LANGUAGES CXX)

# Find the Qt 6 packages you need
find_package(Qt6 REQUIRED COMPONENTS Core Qml Quick Multimedia)

# Set the source files
set(SOURCES
    main.cpp  # Add your source files here
)

# Create the executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Link the Qt libraries
target_link_libraries(${PROJECT_NAME} Qt6::Core Qt6::Qml Qt6::Quick Qt6::Multimedia)

# Specify the C++ standard
set_target_properties(${PROJECT_NAME} PROPERTIES
    CXX_STANDARD 17  # or the version you prefer
    CXX_STANDARD_REQUIRED ON
)

# Include directories if needed (optional)
# target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)
