;; Auto-generated. Do not edit!


(when (boundp 'messages::EnemyDirectionGoal)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'EnemyDirectionGoal (find-package "MESSAGES")))
(unless (find-package "MESSAGES::ENEMYDIRECTIONGOAL")
  (make-package "MESSAGES::ENEMYDIRECTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude EnemyDirectionGoal.msg.html


(defclass messages::EnemyDirectionGoal
  :super ros::object
  :slots (_command ))

(defmethod messages::EnemyDirectionGoal
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::EnemyDirectionGoal :md5sum-) "3a54bc0c5f4abe9ad44d29292ec0800d")
(setf (get messages::EnemyDirectionGoal :datatype-) "messages/EnemyDirectionGoal")
(setf (get messages::EnemyDirectionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Send a flag to server to control the thread start, pause, restart and stop
#command == 1 start
#command == 2 pause
#command == 3 stop
int32 command

")



(provide :messages/EnemyDirectionGoal "3a54bc0c5f4abe9ad44d29292ec0800d")

