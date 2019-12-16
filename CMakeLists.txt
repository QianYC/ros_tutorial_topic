cmake_minimum_required(VERSION 2.8.3)
project(ros_tutorial_topic)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  std_msgs
        actionlib
        actionlib_msgs
)

find_package(Boost REQUIRED COMPONENTS system)

## Generate messages in the 'msg' folder
add_message_files(
    FILES
    MsgTutorial.msg
)

## Generate services in the 'srv' folder
add_service_files(
        FILES
        SrvTutorial.srv
)

## Generate actions in the 'action' folder
add_action_files(
        FILES
        Fib.action
)

## Generate added messages and services with any dependencies listed here
generate_messages(
    DEPENDENCIES
    std_msgs
        actionlib_msgs
)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
   LIBRARIES ros_tutorial_topic
   CATKIN_DEPENDS roscpp std_msgs message_runtime actionlib actionlib_msgs
   DEPENDS Boost
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
        ${Boost_INCLUDE_DIRS}
)

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(topic_publisher src/topic_publisher.cpp)
add_executable(topic_subscriber src/topic_subscriber.cpp)
add_executable(service_server src/service_server.cpp)
add_executable(service_client src/service_client.cpp)
add_executable(action_server src/action_server.cpp)
add_executable(action_client src/action_client.cpp)
add_executable(action_listener src/action_listener.cpp)

## Add cmake target dependencies of the executable
## same as for the library above
add_dependencies(topic_publisher ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(topic_subscriber ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(service_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(service_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(action_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(action_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(action_listener ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
target_link_libraries(topic_publisher ${catkin_LIBRARIES})
target_link_libraries(topic_subscriber ${catkin_LIBRARIES})
target_link_libraries(service_server ${catkin_LIBRARIES})
target_link_libraries(service_client ${catkin_LIBRARIES})
target_link_libraries(action_server ${catkin_LIBRARIES})
target_link_libraries(action_client ${catkin_LIBRARIES})
target_link_libraries(action_listener ${catkin_LIBRARIES})