;; Auto-generated. Do not edit!


(when (boundp 'p4::SetPosition)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'SetPosition (find-package "P4")))
(unless (find-package "P4::SETPOSITION")
  (make-package "P4::SETPOSITION"))
(unless (find-package "P4::SETPOSITIONREQUEST")
  (make-package "P4::SETPOSITIONREQUEST"))
(unless (find-package "P4::SETPOSITIONRESPONSE")
  (make-package "P4::SETPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p4::SetPositionRequest
  :super ros::object
  :slots (_pos ))

(defmethod p4::SetPositionRequest
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(defclass p4::SetPositionResponse
  :super ros::object
  :slots ())

(defmethod p4::SetPositionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass p4::SetPosition
  :super ros::object
  :slots ())

(setf (get p4::SetPosition :md5sum-) "adc15b7ec843fd0b7cee4d793a701b71")
(setf (get p4::SetPosition :datatype-) "p4/SetPosition")
(setf (get p4::SetPosition :request) p4::SetPositionRequest)
(setf (get p4::SetPosition :response) p4::SetPositionResponse)

(defmethod p4::SetPositionRequest
  (:response () (instance p4::SetPositionResponse :init)))

(setf (get p4::SetPositionRequest :md5sum-) "adc15b7ec843fd0b7cee4d793a701b71")
(setf (get p4::SetPositionRequest :datatype-) "p4/SetPositionRequest")
(setf (get p4::SetPositionRequest :definition-)
      "geometry_msgs/Point pos

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")

(setf (get p4::SetPositionResponse :md5sum-) "adc15b7ec843fd0b7cee4d793a701b71")
(setf (get p4::SetPositionResponse :datatype-) "p4/SetPositionResponse")
(setf (get p4::SetPositionResponse :definition-)
      "geometry_msgs/Point pos

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")



(provide :p4/SetPosition "adc15b7ec843fd0b7cee4d793a701b71")


