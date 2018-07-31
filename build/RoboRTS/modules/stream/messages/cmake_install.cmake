# Install script for directory: /home/dji/roborts_ws/src/RoboRTS/modules/stream/messages

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dji/roborts_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/action" TYPE FILE FILES
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/EnemyDirection.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/example.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/LocalPlanner.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/GlobalPlanner.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/ArmorDetection.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/Localization.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/BotGoal.action"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/action/caissonDetection.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg"
    "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/msg" TYPE FILE FILES
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/srv" TYPE FILE FILES
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv"
    "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/messages/cmake" TYPE FILE FILES "/home/dji/roborts_ws/build/RoboRTS/modules/stream/messages/catkin_generated/installspace/messages-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dji/roborts_ws/devel/include/messages")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dji/roborts_ws/devel/share/roseus/ros/messages")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dji/roborts_ws/devel/share/common-lisp/ros/messages")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dji/roborts_ws/devel/share/gennodejs/ros/messages")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dji/roborts_ws/devel/lib/python2.7/dist-packages/messages")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dji/roborts_ws/devel/lib/python2.7/dist-packages/messages")
endif()

