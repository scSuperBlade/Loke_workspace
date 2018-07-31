;; Auto-generated. Do not edit!


(when (boundp 'messages::ShootInfo)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'ShootInfo (find-package "MESSAGES")))
(unless (find-package "MESSAGES::SHOOTINFO")
  (make-package "MESSAGES::SHOOTINFO"))

(in-package "ROS")
;;//! \htmlinclude ShootInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass messages::ShootInfo
  :super ros::object
  :slots (_header _remain_bullet _sent_bullet _fric_wheel_run ))

(defmethod messages::ShootInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:remain_bullet __remain_bullet) 0)
    ((:sent_bullet __sent_bullet) 0)
    ((:fric_wheel_run __fric_wheel_run) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _remain_bullet (round __remain_bullet))
   (setq _sent_bullet (round __sent_bullet))
   (setq _fric_wheel_run __fric_wheel_run)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:remain_bullet
   (&optional __remain_bullet)
   (if __remain_bullet (setq _remain_bullet __remain_bullet)) _remain_bullet)
  (:sent_bullet
   (&optional __sent_bullet)
   (if __sent_bullet (setq _sent_bullet __sent_bullet)) _sent_bullet)
  (:fric_wheel_run
   (&optional __fric_wheel_run)
   (if __fric_wheel_run (setq _fric_wheel_run __fric_wheel_run)) _fric_wheel_run)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _remain_bullet
    2
    ;; int16 _sent_bullet
    2
    ;; bool _fric_wheel_run
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _remain_bullet
       (write-word _remain_bullet s)
     ;; int16 _sent_bullet
       (write-word _sent_bullet s)
     ;; bool _fric_wheel_run
       (if _fric_wheel_run (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _remain_bullet
     (setq _remain_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sent_bullet
     (setq _sent_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _fric_wheel_run
     (setq _fric_wheel_run (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get messages::ShootInfo :md5sum-) "c71a8c5d03eafbb3be3f4aa0410b8278")
(setf (get messages::ShootInfo :datatype-) "messages/ShootInfo")
(setf (get messages::ShootInfo :definition-)
      "Header header

#Remain bullets number
int16 remain_bullet

#Bullets fired number
int16 sent_bullet

#Friction running status
bool fric_wheel_run
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



(provide :messages/ShootInfo "c71a8c5d03eafbb3be3f4aa0410b8278")


