;; Auto-generated. Do not edit!


(when (boundp 'messages::RfidInfo)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'RfidInfo (find-package "MESSAGES")))
(unless (find-package "MESSAGES::RFIDINFO")
  (make-package "MESSAGES::RFIDINFO"))

(in-package "ROS")
;;//! \htmlinclude RfidInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass messages::RfidInfo
  :super ros::object
  :slots (_header _card_type _card_idx ))

(defmethod messages::RfidInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:card_type __card_type) 0)
    ((:card_idx __card_idx) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _card_type (round __card_type))
   (setq _card_idx (round __card_idx))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:card_type
   (&optional __card_type)
   (if __card_type (setq _card_type __card_type)) _card_type)
  (:card_idx
   (&optional __card_idx)
   (if __card_idx (setq _card_idx __card_idx)) _card_idx)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _card_type
    2
    ;; int16 _card_idx
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _card_type
       (write-word _card_type s)
     ;; int16 _card_idx
       (write-word _card_idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _card_type
     (setq _card_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _card_idx
     (setq _card_idx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get messages::RfidInfo :md5sum-) "6068fcf6be5654b67a554d35cb390a35")
(setf (get messages::RfidInfo :datatype-) "messages/RfidInfo")
(setf (get messages::RfidInfo :definition-)
      "Header header

#rfid card type: if type = 11, card is ICRA buff card
int16 card_type

#rfid card index
int16 card_idx
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



(provide :messages/RfidInfo "6068fcf6be5654b67a554d35cb390a35")


