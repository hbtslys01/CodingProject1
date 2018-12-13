;; Auto-generated. Do not edit!


(when (boundp 'p3::Problem3a)
  (if (not (find-package "P3"))
    (make-package "P3"))
  (shadow 'Problem3a (find-package "P3")))
(unless (find-package "P3::PROBLEM3A")
  (make-package "P3::PROBLEM3A"))
(unless (find-package "P3::PROBLEM3AREQUEST")
  (make-package "P3::PROBLEM3AREQUEST"))
(unless (find-package "P3::PROBLEM3ARESPONSE")
  (make-package "P3::PROBLEM3ARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p3::Problem3aRequest
  :super ros::object
  :slots (_position ))

(defmethod p3::Problem3aRequest
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass p3::Problem3aResponse
  :super ros::object
  :slots (_angles ))

(defmethod p3::Problem3aResponse
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

(defclass p3::Problem3a
  :super ros::object
  :slots ())

(setf (get p3::Problem3a :md5sum-) "39287755337901955a554fcb016050f9")
(setf (get p3::Problem3a :datatype-) "p3/Problem3a")
(setf (get p3::Problem3a :request) p3::Problem3aRequest)
(setf (get p3::Problem3a :response) p3::Problem3aResponse)

(defmethod p3::Problem3aRequest
  (:response () (instance p3::Problem3aResponse :init)))

(setf (get p3::Problem3aRequest :md5sum-) "39287755337901955a554fcb016050f9")
(setf (get p3::Problem3aRequest :datatype-) "p3/Problem3aRequest")
(setf (get p3::Problem3aRequest :definition-)
      "geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
p3/JointAngles angles


================================================================================
MSG: p3/JointAngles
float64[5] angles
")

(setf (get p3::Problem3aResponse :md5sum-) "39287755337901955a554fcb016050f9")
(setf (get p3::Problem3aResponse :datatype-) "p3/Problem3aResponse")
(setf (get p3::Problem3aResponse :definition-)
      "geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
p3/JointAngles angles


================================================================================
MSG: p3/JointAngles
float64[5] angles
")



(provide :p3/Problem3a "39287755337901955a554fcb016050f9")


