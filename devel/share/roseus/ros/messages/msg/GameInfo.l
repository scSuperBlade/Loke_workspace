;; Auto-generated. Do not edit!


(when (boundp 'messages::GameInfo)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'GameInfo (find-package "MESSAGES")))
(unless (find-package "MESSAGES::GAMEINFO")
  (make-package "MESSAGES::GAMEINFO"))

(in-package "ROS")
;;//! \htmlinclude GameInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass messages::GameInfo
  :super ros::object
  :slots (_header _remain_time _game_process _remain_hp _max_hp ))

(defmethod messages::GameInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:remain_time __remain_time) 0)
    ((:game_process __game_process) 0)
    ((:remain_hp __remain_hp) 0)
    ((:max_hp __max_hp) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _remain_time (round __remain_time))
   (setq _game_process (round __game_process))
   (setq _remain_hp (round __remain_hp))
   (setq _max_hp (round __max_hp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:remain_time
   (&optional __remain_time)
   (if __remain_time (setq _remain_time __remain_time)) _remain_time)
  (:game_process
   (&optional __game_process)
   (if __game_process (setq _game_process __game_process)) _game_process)
  (:remain_hp
   (&optional __remain_hp)
   (if __remain_hp (setq _remain_hp __remain_hp)) _remain_hp)
  (:max_hp
   (&optional __max_hp)
   (if __max_hp (setq _max_hp __max_hp)) _max_hp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _remain_time
    2
    ;; int16 _game_process
    2
    ;; int16 _remain_hp
    2
    ;; int16 _max_hp
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _remain_time
       (write-word _remain_time s)
     ;; int16 _game_process
       (write-word _game_process s)
     ;; int16 _remain_hp
       (write-word _remain_hp s)
     ;; int16 _max_hp
       (write-word _max_hp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _remain_time
     (setq _remain_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _game_process
     (setq _game_process (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _remain_hp
     (setq _remain_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _max_hp
     (setq _max_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get messages::GameInfo :md5sum-) "f22667905a2c8ef96aa7371a952446a4")
(setf (get messages::GameInfo :datatype-) "messages/GameInfo")
(setf (get messages::GameInfo :definition-)
      "Header header
int16 remain_time

#current race stage
#  0 not start
#  1 preparation stage
#  2 self-check stage
#  3 5 seconds count down
#  4 fighting stage
#  5 result computing stage */
int16 game_process

int16 remain_hp
int16 max_hp
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



(provide :messages/GameInfo "f22667905a2c8ef96aa7371a952446a4")


