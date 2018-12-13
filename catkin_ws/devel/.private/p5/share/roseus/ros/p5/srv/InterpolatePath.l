;; Auto-generated. Do not edit!


(when (boundp 'p5::InterpolatePath)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'InterpolatePath (find-package "P5")))
(unless (find-package "P5::INTERPOLATEPATH")
  (make-package "P5::INTERPOLATEPATH"))
(unless (find-package "P5::INTERPOLATEPATHREQUEST")
  (make-package "P5::INTERPOLATEPATHREQUEST"))
(unless (find-package "P5::INTERPOLATEPATHRESPONSE")
  (make-package "P5::INTERPOLATEPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass p5::InterpolatePathRequest
  :super ros::object
  :slots (_path _distance ))

(defmethod p5::InterpolatePathRequest
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:distance __distance) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _path __path)
   (setq _distance __distance)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:distance
   (&rest __distance)
   (if (keywordp (car __distance))
       (send* _distance __distance)
     (progn
       (if __distance (setq _distance (car __distance)))
       _distance)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; std_msgs/Float32 _distance
    (send _distance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; std_msgs/Float32 _distance
       (send _distance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Float32 _distance
     (send _distance :deserialize buf ptr-) (incf ptr- (send _distance :serialization-length))
   ;;
   self)
  )

(defclass p5::InterpolatePathResponse
  :super ros::object
  :slots (_point ))

(defmethod p5::InterpolatePathResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass p5::InterpolatePath
  :super ros::object
  :slots ())

(setf (get p5::InterpolatePath :md5sum-) "8c3e2084abc80e147089171826a07fe3")
(setf (get p5::InterpolatePath :datatype-) "p5/InterpolatePath")
(setf (get p5::InterpolatePath :request) p5::InterpolatePathRequest)
(setf (get p5::InterpolatePath :response) p5::InterpolatePathResponse)

(defmethod p5::InterpolatePathRequest
  (:response () (instance p5::InterpolatePathResponse :init)))

(setf (get p5::InterpolatePathRequest :md5sum-) "8c3e2084abc80e147089171826a07fe3")
(setf (get p5::InterpolatePathRequest :datatype-) "p5/InterpolatePathRequest")
(setf (get p5::InterpolatePathRequest :definition-)
      "geometry_msgs/Point[] path
std_msgs/Float32 distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Float32
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get p5::InterpolatePathResponse :md5sum-) "8c3e2084abc80e147089171826a07fe3")
(setf (get p5::InterpolatePathResponse :datatype-) "p5/InterpolatePathResponse")
(setf (get p5::InterpolatePathResponse :definition-)
      "geometry_msgs/Point[] path
std_msgs/Float32 distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Float32
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :p5/InterpolatePath "8c3e2084abc80e147089171826a07fe3")


