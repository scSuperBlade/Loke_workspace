;; Auto-generated. Do not edit!


(when (boundp 'messages::GimbalAngle)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'GimbalAngle (find-package "MESSAGES")))
(unless (find-package "MESSAGES::GIMBALANGLE")
  (make-package "MESSAGES::GIMBALANGLE"))

(in-package "ROS")
;;//! \htmlinclude GimbalAngle.msg.html


(defclass messages::GimbalAngle
  :super ros::object
  :slots (_yaw _pitch ))

(defmethod messages::GimbalAngle
  (:init
   (&key
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    )
   (send-super :init)
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:serialization-length
   ()
   (+
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get messages::GimbalAngle :md5sum-) "84eddaf18b6b9df47b605419a0572436")
(setf (get messages::GimbalAngle :datatype-) "messages/GimbalAngle")
(setf (get messages::GimbalAngle :definition-)
      "#gimbal feedback angle data
float64 yaw
float64 pitch
")



(provide :messages/GimbalAngle "84eddaf18b6b9df47b605419a0572436")


