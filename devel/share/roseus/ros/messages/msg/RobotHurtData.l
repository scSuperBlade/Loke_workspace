;; Auto-generated. Do not edit!


(when (boundp 'messages::RobotHurtData)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'RobotHurtData (find-package "MESSAGES")))
(unless (find-package "MESSAGES::ROBOTHURTDATA")
  (make-package "MESSAGES::ROBOTHURTDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotHurtData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass messages::RobotHurtData
  :super ros::object
  :slots (_header _armor_type _hurt_type ))

(defmethod messages::RobotHurtData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:armor_type __armor_type) 0)
    ((:hurt_type __hurt_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _armor_type (round __armor_type))
   (setq _hurt_type (round __hurt_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:armor_type
   (&optional __armor_type)
   (if __armor_type (setq _armor_type __armor_type)) _armor_type)
  (:hurt_type
   (&optional __hurt_type)
   (if __hurt_type (setq _hurt_type __hurt_type)) _hurt_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _armor_type
    2
    ;; int16 _hurt_type
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _armor_type
       (write-word _armor_type s)
     ;; int16 _hurt_type
       (write-word _hurt_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _armor_type
     (setq _armor_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _hurt_type
     (setq _hurt_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get messages::RobotHurtData :md5sum-) "802a8244ba552af5959fc38d50ee9b26")
(setf (get messages::RobotHurtData :datatype-) "messages/RobotHurtData")
(setf (get messages::RobotHurtData :definition-)
      "Header header
int16 armor_type
int16 hurt_type
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

")



(provide :messages/RobotHurtData "802a8244ba552af5959fc38d50ee9b26")


