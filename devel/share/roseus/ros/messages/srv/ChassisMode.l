;; Auto-generated. Do not edit!


(when (boundp 'messages::ChassisMode)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'ChassisMode (find-package "MESSAGES")))
(unless (find-package "MESSAGES::CHASSISMODE")
  (make-package "MESSAGES::CHASSISMODE"))
(unless (find-package "MESSAGES::CHASSISMODEREQUEST")
  (make-package "MESSAGES::CHASSISMODEREQUEST"))
(unless (find-package "MESSAGES::CHASSISMODERESPONSE")
  (make-package "MESSAGES::CHASSISMODERESPONSE"))

(in-package "ROS")





(defclass messages::ChassisModeRequest
  :super ros::object
  :slots (_chassis_mode ))

(defmethod messages::ChassisModeRequest
  (:init
   (&key
    ((:chassis_mode __chassis_mode) 0)
    )
   (send-super :init)
   (setq _chassis_mode (round __chassis_mode))
   self)
  (:chassis_mode
   (&optional __chassis_mode)
   (if __chassis_mode (setq _chassis_mode __chassis_mode)) _chassis_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _chassis_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _chassis_mode
       (write-byte _chassis_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _chassis_mode
     (setq _chassis_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::ChassisModeResponse
  :super ros::object
  :slots (_received ))

(defmethod messages::ChassisModeResponse
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

(defclass messages::ChassisMode
  :super ros::object
  :slots ())

(setf (get messages::ChassisMode :md5sum-) "40a1e51b6bb5a70a607d07454b9fd407")
(setf (get messages::ChassisMode :datatype-) "messages/ChassisMode")
(setf (get messages::ChassisMode :request) messages::ChassisModeRequest)
(setf (get messages::ChassisMode :response) messages::ChassisModeResponse)

(defmethod messages::ChassisModeRequest
  (:response () (instance messages::ChassisModeResponse :init)))

(setf (get messages::ChassisModeRequest :md5sum-) "40a1e51b6bb5a70a607d07454b9fd407")
(setf (get messages::ChassisModeRequest :datatype-) "messages/ChassisModeRequest")
(setf (get messages::ChassisModeRequest :definition-)
      "uint8 chassis_mode
---
bool received
")

(setf (get messages::ChassisModeResponse :md5sum-) "40a1e51b6bb5a70a607d07454b9fd407")
(setf (get messages::ChassisModeResponse :datatype-) "messages/ChassisModeResponse")
(setf (get messages::ChassisModeResponse :definition-)
      "uint8 chassis_mode
---
bool received
")



(provide :messages/ChassisMode "40a1e51b6bb5a70a607d07454b9fd407")


