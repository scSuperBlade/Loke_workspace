# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "messages: 65 messages, 6 services")

set(MSG_I_FLAGS "-Imessages:/home/dji/roborts_ws/devel/share/messages/msg;-Imessages:/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(messages_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" "messages/exampleResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:messages/LocalPlannerFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" "messages/EnemyDirectionResult:std_msgs/Header:messages/EnemyDirectionActionGoal:messages/EnemyDirectionActionFeedback:messages/EnemyDirectionGoal:messages/EnemyDirectionActionResult:messages/EnemyDirectionFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:messages/LocalPlannerResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:messages/BotGoalGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/TwistWithCovariance"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:messages/caissonDetectionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" "messages/exampleGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" "messages/ArmorDetectionResult:messages/ArmorDetectionFeedback:geometry_msgs/PoseStamped:messages/ArmorDetectionActionFeedback:std_msgs/Header:geometry_msgs/Quaternion:messages/ArmorDetectionActionGoal:geometry_msgs/Point:messages/ArmorDetectionGoal:geometry_msgs/Pose:actionlib_msgs/GoalID:messages/ArmorDetectionActionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" "geometry_msgs/PoseStamped:std_msgs/Header:messages/LocalPlannerGoal:geometry_msgs/Quaternion:messages/LocalPlannerActionGoal:messages/LocalPlannerActionResult:geometry_msgs/Point:messages/LocalPlannerActionFeedback:geometry_msgs/Pose:messages/LocalPlannerFeedback:messages/LocalPlannerResult:actionlib_msgs/GoalID:nav_msgs/Path:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" "messages/BotGoalResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" "messages/LocalizationGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:messages/caissonDetectionGoal"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" "messages/caissonDetectionActionGoal:std_msgs/Header:messages/caissonDetectionActionResult:messages/caissonDetectionFeedback:messages/caissonDetectionResult:messages/caissonDetectionActionFeedback:actionlib_msgs/GoalID:messages/caissonDetectionGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" "messages/exampleResult:std_msgs/Header:messages/exampleGoal:messages/exampleActionFeedback:messages/exampleActionGoal:messages/exampleActionResult:actionlib_msgs/GoalID:messages/exampleFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" "messages/GlobalPlannerResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" "messages/EnemyDirectionResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" "messages/EnemyDirectionFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" "messages/GlobalPlannerActionGoal:messages/GlobalPlannerGoal:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:messages/GlobalPlannerActionFeedback:geometry_msgs/Point:messages/GlobalPlannerResult:messages/GlobalPlannerFeedback:geometry_msgs/PoseStamped:messages/GlobalPlannerActionResult:actionlib_msgs/GoalID:nav_msgs/Path:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" "messages/EnemyDirectionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" "messages/LocalizationResult:std_msgs/Header:messages/LocalizationActionResult:messages/LocalizationGoal:messages/LocalizationActionGoal:messages/LocalizationFeedback:actionlib_msgs/GoalID:messages/LocalizationActionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" "messages/ArmorDetectionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:messages/LocalPlannerGoal:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" "messages/ArmorDetectionResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" "messages/GlobalPlannerFeedback:geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:actionlib_msgs/GoalID:nav_msgs/Path:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" "messages/GlobalPlannerGoal:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:messages/caissonDetectionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" "messages/BotGoalFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" "messages/ArmorDetectionFeedback:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" "messages/LocalizationFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" "messages/LocalizationResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" ""
)

get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" "messages/BotGoalResult:geometry_msgs/Pose:std_msgs/Header:messages/BotGoalActionFeedback:geometry_msgs/Quaternion:messages/BotGoalActionResult:geometry_msgs/Point:messages/BotGoalActionGoal:geometry_msgs/PoseStamped:messages/BotGoalGoal:actionlib_msgs/GoalID:messages/BotGoalFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" NAME_WE)
add_custom_target(_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "messages" "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" "messages/exampleFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_msg_cpp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)

### Generating Services
_generate_srv_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_srv_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_srv_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_srv_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_srv_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)
_generate_srv_cpp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
)

### Generating Module File
_generate_module_cpp(messages
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(messages_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(messages_generate_messages messages_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_cpp _messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(messages_gencpp)
add_dependencies(messages_gencpp messages_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS messages_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_msg_eus(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)

### Generating Services
_generate_srv_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_srv_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_srv_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_srv_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_srv_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)
_generate_srv_eus(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
)

### Generating Module File
_generate_module_eus(messages
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(messages_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(messages_generate_messages messages_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_eus _messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(messages_geneus)
add_dependencies(messages_geneus messages_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS messages_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_msg_lisp(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)

### Generating Services
_generate_srv_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_srv_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_srv_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_srv_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_srv_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)
_generate_srv_lisp(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
)

### Generating Module File
_generate_module_lisp(messages
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(messages_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(messages_generate_messages messages_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_lisp _messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(messages_genlisp)
add_dependencies(messages_genlisp messages_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS messages_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_msg_nodejs(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)

### Generating Services
_generate_srv_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_srv_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_srv_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_srv_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_srv_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)
_generate_srv_nodejs(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
)

### Generating Module File
_generate_module_nodejs(messages
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(messages_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(messages_generate_messages messages_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_nodejs _messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(messages_gennodejs)
add_dependencies(messages_gennodejs messages_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS messages_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_msg_py(messages
  "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)

### Generating Services
_generate_srv_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_srv_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_srv_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_srv_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_srv_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)
_generate_srv_py(messages
  "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
)

### Generating Module File
_generate_module_py(messages
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(messages_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(messages_generate_messages messages_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/SelfCheck.srv" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ChassisMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/Odometry.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RfidInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/CheckStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GoalTask.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/ShootModeControl.srv" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GameInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/GimbalAngle.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GimbalMode.srv" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/RobotHurtData.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/srv/GameBuffStatus.srv" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/EnemyPos.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/caissonDetectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/LocalizationActionResult.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/EnemyDirectionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleGoal.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootState.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg/ShootInfo.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/BotGoalAction.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dji/roborts_ws/devel/share/messages/msg/exampleActionFeedback.msg" NAME_WE)
add_dependencies(messages_generate_messages_py _messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(messages_genpy)
add_dependencies(messages_genpy messages_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS messages_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/messages
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(messages_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(messages_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(messages_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/messages
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(messages_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(messages_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(messages_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/messages
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(messages_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(messages_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(messages_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/messages
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(messages_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(messages_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(messages_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/messages
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(messages_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(messages_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(messages_generate_messages_py nav_msgs_generate_messages_py)
endif()
