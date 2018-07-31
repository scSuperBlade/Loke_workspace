;; Auto-generated. Do not edit!


(when (boundp 'messages::EnemyPos)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'EnemyPos (find-package "MESSAGES")))
(unless (find-package "MESSAGES::ENEMYPOS")
  (make-package "MESSAGES::ENEMYPOS"))

(in-package "ROS")
;;//! \htmlinclude EnemyPos.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass messages::EnemyPos
  :super ros::object
  :slots (_enemy_pos _dis _pitch _yaw ))

(defmethod messages::EnemyPos
  (:init
   (&key
    ((:enemy_pos __enemy_pos) (instance geometry_msgs::PoseStamped :init))
    ((:dis __dis) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _enemy_pos __enemy_pos)
   (setq _dis (float __dis))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:enemy_pos
   (&rest __enemy_pos)
   (if (keywordp (car __enemy_pos))
       (send* _enemy_pos __enemy_pos)
     (progn
       (if __enemy_pos (setq _enemy_pos (car __enemy_pos)))
       _enemy_pos)))
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _enemy_pos
    (send _enemy_pos :serialization-length)
    ;; float64 _dis
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _enemy_pos
       (send _enemy_pos :serialize s)
     ;; float64 _dis
       (sys::poke _dis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _enemy_pos
     (send _enemy_pos :deserialize buf ptr-) (incf ptr- (send _enemy_pos :serialization-length))
   ;; float64 _dis
     (setq _dis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get messages::EnemyPos :md5sum-) "cc9c3d30064e03b792587d951c5bd853")
(setf (get messages::EnemyPos :datatype-) "messages/EnemyPos")
(setf (get messages::EnemyPos :definition-)
      "geometry_msgs/PoseStamped enemy_pos
float64 dis
float64 pitch
float64 yaw

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



(provide :messages/EnemyPos "cc9c3d30064e03b792587d951c5bd853")


