; Auto-generated. Do not edit!


(cl:in-package cvCamera-msg)


;//! \htmlinclude cameraTip.msg.html

(cl:defclass <cameraTip> (roslisp-msg-protocol:ros-message)
  ((camera_info
    :reader camera_info
    :initarg :camera_info
    :type cl:fixnum
    :initform 0)
   (camera_check
    :reader camera_check
    :initarg :camera_check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass cameraTip (<cameraTip>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cameraTip>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cameraTip)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cvCamera-msg:<cameraTip> is deprecated: use cvCamera-msg:cameraTip instead.")))

(cl:ensure-generic-function 'camera_info-val :lambda-list '(m))
(cl:defmethod camera_info-val ((m <cameraTip>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cvCamera-msg:camera_info-val is deprecated.  Use cvCamera-msg:camera_info instead.")
  (camera_info m))

(cl:ensure-generic-function 'camera_check-val :lambda-list '(m))
(cl:defmethod camera_check-val ((m <cameraTip>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cvCamera-msg:camera_check-val is deprecated.  Use cvCamera-msg:camera_check instead.")
  (camera_check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cameraTip>) ostream)
  "Serializes a message object of type '<cameraTip>"
  (cl:let* ((signed (cl:slot-value msg 'camera_info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'camera_check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cameraTip>) istream)
  "Deserializes a message object of type '<cameraTip>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_info) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'camera_check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cameraTip>)))
  "Returns string type for a message object of type '<cameraTip>"
  "cvCamera/cameraTip")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cameraTip)))
  "Returns string type for a message object of type 'cameraTip"
  "cvCamera/cameraTip")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cameraTip>)))
  "Returns md5sum for a message object of type '<cameraTip>"
  "79b4799b7c29d94aabd168ac1a8c0042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cameraTip)))
  "Returns md5sum for a message object of type 'cameraTip"
  "79b4799b7c29d94aabd168ac1a8c0042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cameraTip>)))
  "Returns full string definition for message of type '<cameraTip>"
  (cl:format cl:nil "~%# 0: left 1: right~%int16 camera_info~%bool camera_check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cameraTip)))
  "Returns full string definition for message of type 'cameraTip"
  (cl:format cl:nil "~%# 0: left 1: right~%int16 camera_info~%bool camera_check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cameraTip>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cameraTip>))
  "Converts a ROS message object to a list"
  (cl:list 'cameraTip
    (cl:cons ':camera_info (camera_info msg))
    (cl:cons ':camera_check (camera_check msg))
))
