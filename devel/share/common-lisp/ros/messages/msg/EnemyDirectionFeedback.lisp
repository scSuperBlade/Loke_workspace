; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude EnemyDirectionFeedback.msg.html

(cl:defclass <EnemyDirectionFeedback> (roslisp-msg-protocol:ros-message)
  ((detected
    :reader detected
    :initarg :detected
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform "")
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EnemyDirectionFeedback (<EnemyDirectionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnemyDirectionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnemyDirectionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<EnemyDirectionFeedback> is deprecated: use messages-msg:EnemyDirectionFeedback instead.")))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <EnemyDirectionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:detected-val is deprecated.  Use messages-msg:detected instead.")
  (detected m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <EnemyDirectionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:error_code-val is deprecated.  Use messages-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <EnemyDirectionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:error_msg-val is deprecated.  Use messages-msg:error_msg instead.")
  (error_msg m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <EnemyDirectionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:direction-val is deprecated.  Use messages-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnemyDirectionFeedback>) ostream)
  "Serializes a message object of type '<EnemyDirectionFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detected) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnemyDirectionFeedback>) istream)
  "Deserializes a message object of type '<EnemyDirectionFeedback>"
    (cl:setf (cl:slot-value msg 'detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnemyDirectionFeedback>)))
  "Returns string type for a message object of type '<EnemyDirectionFeedback>"
  "messages/EnemyDirectionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnemyDirectionFeedback)))
  "Returns string type for a message object of type 'EnemyDirectionFeedback"
  "messages/EnemyDirectionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnemyDirectionFeedback>)))
  "Returns md5sum for a message object of type '<EnemyDirectionFeedback>"
  "440f7111552dc10e9b2c64aef0b050b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnemyDirectionFeedback)))
  "Returns md5sum for a message object of type 'EnemyDirectionFeedback"
  "440f7111552dc10e9b2c64aef0b050b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnemyDirectionFeedback>)))
  "Returns full string definition for message of type '<EnemyDirectionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%bool detected~%int32  error_code~%string error_msg~%# 0: not detected, 1: backward, 2: left, 3, right, 4, forward~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnemyDirectionFeedback)))
  "Returns full string definition for message of type 'EnemyDirectionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%bool detected~%int32  error_code~%string error_msg~%# 0: not detected, 1: backward, 2: left, 3, right, 4, forward~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnemyDirectionFeedback>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'error_msg))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnemyDirectionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'EnemyDirectionFeedback
    (cl:cons ':detected (detected msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_msg (error_msg msg))
    (cl:cons ':direction (direction msg))
))
