;; Auto-generated. Do not edit!


(when (boundp 'p5::SetPosition)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'SetPosition (find-package "P5")))
(unless (find-package "P5::SETPOSITION")
  (make-package "P5::SETPOSITION"))
(unless (find-package "P5::SETPOSITIONREQUEST")
  (make-package "P5::SETPOSITIONREQUEST"))
(unless (find-package "P5::SETPOSITIONRESPONSE")
  (make-package "P5::SETPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p5::SetPositionRequest
  :super ros::object
  :slots (_pos ))

(defmethod p5::SetPositionRequest
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

(defclass p5::SetPositionResponse
  :super ros::object
  :slots ())

(defmethod p5::SetPositionResponse
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

(defclass p5::SetPosition
  :super ros::object
  :slots ())

(setf (get p5::SetPosition :md5sum-) "adc15b7ec843fd0b7cee4d793a701b71")
(setf (get p5::SetPosition :datatype-) "p5/SetPosition")
(setf (get p5::SetPosition :request) p5::SetPositionRequest)
(setf (get p5::SetPosition :response) p5::SetPositionResponse)

(defmethod p5::SetPositionRequest
  (:response () (instance p5::SetPositionResponse :init)))

(setf (get p5::SetPositionRequest :md5sum-) "adc15b7ec843fd0b7cee4d793a701b71")
(setf (get p5::SetPositionRequest :datatype-) "p5/SetPositionRequest")
(setf (get p5::SetPositionRequest :definition-)
      "geometry_msgs/Point pos

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")

(setf (get p5::SetPositionResponse :md5sum-) "adc15b7ec843fd0b7cee4d793a701b71")
(setf (get p5::SetPositionResponse :datatype-) "p5/SetPositionResponse")
(setf (get p5::SetPositionResponse :definition-)
      "geometry_msgs/Point pos

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")



(provide :p5/SetPosition "adc15b7ec843fd0b7cee4d793a701b71")


