; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude RfidInfo.msg.html

(cl:defclass <RfidInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (card_type
    :reader card_type
    :initarg :card_type
    :type cl:fixnum
    :initform 0)
   (card_idx
    :reader card_idx
    :initarg :card_idx
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RfidInfo (<RfidInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<RfidInfo> is deprecated: use messages-msg:RfidInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfidInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:header-val is deprecated.  Use messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'card_type-val :lambda-list '(m))
(cl:defmethod card_type-val ((m <RfidInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:card_type-val is deprecated.  Use messages-msg:card_type instead.")
  (card_type m))

(cl:ensure-generic-function 'card_idx-val :lambda-list '(m))
(cl:defmethod card_idx-val ((m <RfidInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:card_idx-val is deprecated.  Use messages-msg:card_idx instead.")
  (card_idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidInfo>) ostream)
  "Serializes a message object of type '<RfidInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'card_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'card_idx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidInfo>) istream)
  "Deserializes a message object of type '<RfidInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'card_type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'card_idx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidInfo>)))
  "Returns string type for a message object of type '<RfidInfo>"
  "messages/RfidInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidInfo)))
  "Returns string type for a message object of type 'RfidInfo"
  "messages/RfidInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidInfo>)))
  "Returns md5sum for a message object of type '<RfidInfo>"
  "6068fcf6be5654b67a554d35cb390a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidInfo)))
  "Returns md5sum for a message object of type 'RfidInfo"
  "6068fcf6be5654b67a554d35cb390a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidInfo>)))
  "Returns full string definition for message of type '<RfidInfo>"
  (cl:format cl:nil "Header header~%~%#rfid card type: if type = 11, card is ICRA buff card~%int16 card_type~%~%#rfid card index~%int16 card_idx~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidInfo)))
  "Returns full string definition for message of type 'RfidInfo"
  (cl:format cl:nil "Header header~%~%#rfid card type: if type = 11, card is ICRA buff card~%int16 card_type~%~%#rfid card index~%int16 card_idx~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidInfo
    (cl:cons ':header (header msg))
    (cl:cons ':card_type (card_type msg))
    (cl:cons ':card_idx (card_idx msg))
))
