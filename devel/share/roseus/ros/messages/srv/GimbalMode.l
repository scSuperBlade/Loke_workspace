;; Auto-generated. Do not edit!


(when (boundp 'messages::GimbalMode)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'GimbalMode (find-package "MESSAGES")))
(unless (find-package "MESSAGES::GIMBALMODE")
  (make-package "MESSAGES::GIMBALMODE"))
(unless (find-package "MESSAGES::GIMBALMODEREQUEST")
  (make-package "MESSAGES::GIMBALMODEREQUEST"))
(unless (find-package "MESSAGES::GIMBALMODERESPONSE")
  (make-package "MESSAGES::GIMBALMODERESPONSE"))

(in-package "ROS")





(defclass messages::GimbalModeRequest
  :super ros::object
  :slots (_gimbal_mode ))

(defmethod messages::GimbalModeRequest
  (:init
   (&key
    ((:gimbal_mode __gimbal_mode) 0)
    )
   (send-super :init)
   (setq _gimbal_mode (round __gimbal_mode))
   self)
  (:gimbal_mode
   (&optional __gimbal_mode)
   (if __gimbal_mode (setq _gimbal_mode __gimbal_mode)) _gimbal_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _gimbal_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gimbal_mode
       (write-byte _gimbal_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gimbal_mode
     (setq _gimbal_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::GimbalModeResponse
  :super ros::object
  :slots (_received ))

(defmethod messages::GimbalModeResponse
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

(defclass messages::GimbalMode
  :super ros::object
  :slots ())

(setf (get messages::GimbalMode :md5sum-) "fcba9db77a7e7488758d65b81c19e513")
(setf (get messages::GimbalMode :datatype-) "messages/GimbalMode")
(setf (get messages::GimbalMode :request) messages::GimbalModeRequest)
(setf (get messages::GimbalMode :response) messages::GimbalModeResponse)

(defmethod messages::GimbalModeRequest
  (:response () (instance messages::GimbalModeResponse :init)))

(setf (get messages::GimbalModeRequest :md5sum-) "fcba9db77a7e7488758d65b81c19e513")
(setf (get messages::GimbalModeRequest :datatype-) "messages/GimbalModeRequest")
(setf (get messages::GimbalModeRequest :definition-)
      "uint8 gimbal_mode
---
bool received

")

(setf (get messages::GimbalModeResponse :md5sum-) "fcba9db77a7e7488758d65b81c19e513")
(setf (get messages::GimbalModeResponse :datatype-) "messages/GimbalModeResponse")
(setf (get messages::GimbalModeResponse :definition-)
      "uint8 gimbal_mode
---
bool received

")



(provide :messages/GimbalMode "fcba9db77a7e7488758d65b81c19e513")


