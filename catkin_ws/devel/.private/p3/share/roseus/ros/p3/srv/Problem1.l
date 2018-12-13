;; Auto-generated. Do not edit!


(when (boundp 'p3::Problem1)
  (if (not (find-package "P3"))
    (make-package "P3"))
  (shadow 'Problem1 (find-package "P3")))
(unless (find-package "P3::PROBLEM1")
  (make-package "P3::PROBLEM1"))
(unless (find-package "P3::PROBLEM1REQUEST")
  (make-package "P3::PROBLEM1REQUEST"))
(unless (find-package "P3::PROBLEM1RESPONSE")
  (make-package "P3::PROBLEM1RESPONSE"))

(in-package "ROS")





(defclass p3::Problem1Request
  :super ros::object
  :slots (_angles ))

(defmethod p3::Problem1Request
  (:init
   (&key
    ((:angles __angles) (instance p3::JointAngles :init))
    )
   (send-super :init)
   (setq _angles __angles)
   self)
  (:angles
   (&rest __angles)
   (if (keywordp (car __angles))
       (send* _angles __angles)
     (progn
       (if __angles (setq _angles (car __angles)))
       _angles)))
  (:serialization-length
   ()
   (+
    ;; p3/JointAngles _angles
    (send _angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p3/JointAngles _angles
       (send _angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p3/JointAngles _angles
     (send _angles :deserialize buf ptr-) (incf ptr- (send _angles :serialization-length))
   ;;
   self)
  )

(defclass p3::Problem1Response
  :super ros::object
  :slots (_points ))

(defmethod p3::Problem1Response
  (:init
   (&key
    ((:points __points) (instance p3::PointArray :init))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; p3/PointArray _points
    (send _points :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p3/PointArray _points
       (send _points :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p3/PointArray _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;;
   self)
  )

(defclass p3::Problem1
  :super ros::object
  :slots ())

(setf (get p3::Problem1 :md5sum-) "0f43d6b0b523860f6489ab1d8e5a3c26")
(setf (get p3::Problem1 :datatype-) "p3/Problem1")
(setf (get p3::Problem1 :request) p3::Problem1Request)
(setf (get p3::Problem1 :response) p3::Problem1Response)

(defmethod p3::Problem1Request
  (:response () (instance p3::Problem1Response :init)))

(setf (get p3::Problem1Request :md5sum-) "0f43d6b0b523860f6489ab1d8e5a3c26")
(setf (get p3::Problem1Request :datatype-) "p3/Problem1Request")
(setf (get p3::Problem1Request :definition-)
      "JointAngles angles

================================================================================
MSG: p3/JointAngles
float64[5] angles
---
PointArray points


================================================================================
MSG: p3/PointArray
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get p3::Problem1Response :md5sum-) "0f43d6b0b523860f6489ab1d8e5a3c26")
(setf (get p3::Problem1Response :datatype-) "p3/Problem1Response")
(setf (get p3::Problem1Response :definition-)
      "JointAngles angles

================================================================================
MSG: p3/JointAngles
float64[5] angles
---
PointArray points


================================================================================
MSG: p3/PointArray
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :p3/Problem1 "0f43d6b0b523860f6489ab1d8e5a3c26")


