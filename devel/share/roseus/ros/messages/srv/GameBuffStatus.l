;; Auto-generated. Do not edit!


(when (boundp 'messages::GameBuffStatus)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'GameBuffStatus (find-package "MESSAGES")))
(unless (find-package "MESSAGES::GAMEBUFFSTATUS")
  (make-package "MESSAGES::GAMEBUFFSTATUS"))
(unless (find-package "MESSAGES::GAMEBUFFSTATUSREQUEST")
  (make-package "MESSAGES::GAMEBUFFSTATUSREQUEST"))
(unless (find-package "MESSAGES::GAMEBUFFSTATUSRESPONSE")
  (make-package "MESSAGES::GAMEBUFFSTATUSRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass messages::GameBuffStatusRequest
  :super ros::object
  :slots (_header _buff_info ))

(defmethod messages::GameBuffStatusRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:buff_info __buff_info) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _buff_info (round __buff_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:buff_info
   (&optional __buff_info)
   (if __buff_info (setq _buff_info __buff_info)) _buff_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _buff_info
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _buff_info
       (write-word _buff_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _buff_info
     (setq _buff_info (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass messages::GameBuffStatusResponse
  :super ros::object
  :slots (_received ))

(defmethod messages::GameBuffStatusResponse
  (:init
   (&key
    ((:received __received) nil)
    )
   (send-super :init)
   (setq _received __received)
   self)
  (:received
   (&optional __received)
   (if __received (setq _received __received)) _received)
  (:serialization-length
   ()
   (+
    ;; bool _received
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _received
       (if _received (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _received
     (setq _received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::GameBuffStatus
  :super ros::object
  :slots ())

(setf (get messages::GameBuffStatus :md5sum-) "2b948f4403813a06f105f67e07d5a55c")
(setf (get messages::GameBuffStatus :datatype-) "messages/GameBuffStatus")
(setf (get messages::GameBuffStatus :request) messages::GameBuffStatusRequest)
(setf (get messages::GameBuffStatus :response) messages::GameBuffStatusResponse)

(defmethod messages::GameBuffStatusRequest
  (:response () (instance messages::GameBuffStatusResponse :init)))

(setf (get messages::GameBuffStatusRequest :md5sum-) "2b948f4403813a06f105f67e07d5a55c")
(setf (get messages::GameBuffStatusRequest :datatype-) "messages/GameBuffStatusRequest")
(setf (get messages::GameBuffStatusRequest :definition-)
      "Header header

int16 buff_info


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
---

bool received
")

(setf (get messages::GameBuffStatusResponse :md5sum-) "2b948f4403813a06f105f67e07d5a55c")
(setf (get messages::GameBuffStatusResponse :datatype-) "messages/GameBuffStatusResponse")
(setf (get messages::GameBuffStatusResponse :definition-)
      "Header header

int16 buff_info


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
---

bool received
")



(provide :messages/GameBuffStatus "2b948f4403813a06f105f67e07d5a55c")


