;; Auto-generated. Do not edit!


(when (boundp 'p4::GetPosition)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'GetPosition (find-package "P4")))
(unless (find-package "P4::GETPOSITION")
  (make-package "P4::GETPOSITION"))
(unless (find-package "P4::GETPOSITIONREQUEST")
  (make-package "P4::GETPOSITIONREQUEST"))
(unless (find-package "P4::GETPOSITIONRESPONSE")
  (make-package "P4::GETPOSITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass p4::GetPositionRequest
  :super ros::object
  :slots ())

(defmethod p4::GetPositionRequest
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

(defclass p4::GetPositionResponse
  :super ros::object
  :slots (_pos _orientation ))

(defmethod p4::GetPositionResponse
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _orientation __orientation)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(defclass p4::GetPosition
  :super ros::object
  :slots ())

(setf (get p4::GetPosition :md5sum-) "3860763bcb57a7205cf0008cf4d52a71")
(setf (get p4::GetPosition :datatype-) "p4/GetPosition")
(setf (get p4::GetPosition :request) p4::GetPositionRequest)
(setf (get p4::GetPosition :response) p4::GetPositionResponse)

(defmethod p4::GetPositionRequest
  (:response () (instance p4::GetPositionResponse :init)))

(setf (get p4::GetPositionRequest :md5sum-) "3860763bcb57a7205cf0008cf4d52a71")
(setf (get p4::GetPositionRequest :datatype-) "p4/GetPositionRequest")
(setf (get p4::GetPositionRequest :definition-)
      "---
geometry_msgs/Point pos
geometry_msgs/Quaternion orientation


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get p4::GetPositionResponse :md5sum-) "3860763bcb57a7205cf0008cf4d52a71")
(setf (get p4::GetPositionResponse :datatype-) "p4/GetPositionResponse")
(setf (get p4::GetPositionResponse :definition-)
      "---
geometry_msgs/Point pos
geometry_msgs/Quaternion orientation


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :p4/GetPosition "3860763bcb57a7205cf0008cf4d52a71")


