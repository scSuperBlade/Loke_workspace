;; Auto-generated. Do not edit!


(when (boundp 'messages::GoalTask)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'GoalTask (find-package "MESSAGES")))
(unless (find-package "MESSAGES::GOALTASK")
  (make-package "MESSAGES::GOALTASK"))

(in-package "ROS")
;;//! \htmlinclude GoalTask.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass messages::GoalTask
  :super ros::object
  :slots (_goal _arrive ))

(defmethod messages::GoalTask
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:arrive __arrive) nil)
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _arrive __arrive)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:arrive
   (&optional __arrive)
   (if __arrive (setq _arrive __arrive)) _arrive)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; bool _arrive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; bool _arrive
       (if _arrive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; bool _arrive
     (setq _arrive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get messages::GoalTask :md5sum-) "b129650f30bb94defb4a6c985ec83b28")
(setf (get messages::GoalTask :datatype-) "messages/GoalTask")
(setf (get messages::GoalTask :definition-)
      "geometry_msgs/PoseStamped goal
bool arrive

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :messages/GoalTask "b129650f30bb94defb4a6c985ec83b28")


