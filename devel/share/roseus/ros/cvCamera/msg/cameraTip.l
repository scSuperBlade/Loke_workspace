;; Auto-generated. Do not edit!


(when (boundp 'cvCamera::cameraTip)
  (if (not (find-package "CVCAMERA"))
    (make-package "CVCAMERA"))
  (shadow 'cameraTip (find-package "CVCAMERA")))
(unless (find-package "CVCAMERA::CAMERATIP")
  (make-package "CVCAMERA::CAMERATIP"))

(in-package "ROS")
;;//! \htmlinclude cameraTip.msg.html


(defclass cvCamera::cameraTip
  :super ros::object
  :slots (_camera_info _camera_check ))

(defmethod cvCamera::cameraTip
  (:init
   (&key
    ((:camera_info __camera_info) 0)
    ((:camera_check __camera_check) nil)
    )
   (send-super :init)
   (setq _camera_info (round __camera_info))
   (setq _camera_check __camera_check)
   self)
  (:camera_info
   (&optional __camera_info)
   (if __camera_info (setq _camera_info __camera_info)) _camera_info)
  (:camera_check
   (&optional __camera_check)
   (if __camera_check (setq _camera_check __camera_check)) _camera_check)
  (:serialization-length
   ()
   (+
    ;; int16 _camera_info
    2
    ;; bool _camera_check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _camera_info
       (write-word _camera_info s)
     ;; bool _camera_check
       (if _camera_check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _camera_info
     (setq _camera_info (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _camera_check
     (setq _camera_check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cvCamera::cameraTip :md5sum-) "79b4799b7c29d94aabd168ac1a8c0042")
(setf (get cvCamera::cameraTip :datatype-) "cvCamera/cameraTip")
(setf (get cvCamera::cameraTip :definition-)
      "
# 0: left 1: right
int16 camera_info
bool camera_check

")



(provide :cvCamera/cameraTip "79b4799b7c29d94aabd168ac1a8c0042")


