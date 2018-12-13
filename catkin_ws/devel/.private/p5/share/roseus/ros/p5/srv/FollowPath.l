;; Auto-generated. Do not edit!


(when (boundp 'p5::FollowPath)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'FollowPath (find-package "P5")))
(unless (find-package "P5::FOLLOWPATH")
  (make-package "P5::FOLLOWPATH"))
(unless (find-package "P5::FOLLOWPATHREQUEST")
  (make-package "P5::FOLLOWPATHREQUEST"))
(unless (find-package "P5::FOLLOWPATHRESPONSE")
  (make-package "P5::FOLLOWPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p5::FollowPathRequest
  :super ros::object
  :slots (_path ))

(defmethod p5::FollowPathRequest
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
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
   ;;
   self)
  )

(defclass p5::FollowPathResponse
  :super ros::object
  :slots ())

(defmethod p5::FollowPathResponse
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

(defclass p5::FollowPath
  :super ros::object
  :slots ())

(setf (get p5::FollowPath :md5sum-) "b58b29f4d3d5430fc9d5efc2f5262786")
(setf (get p5::FollowPath :datatype-) "p5/FollowPath")
(setf (get p5::FollowPath :request) p5::FollowPathRequest)
(setf (get p5::FollowPath :response) p5::FollowPathResponse)

(defmethod p5::FollowPathRequest
  (:response () (instance p5::FollowPathResponse :init)))

(setf (get p5::FollowPathRequest :md5sum-) "b58b29f4d3d5430fc9d5efc2f5262786")
(setf (get p5::FollowPathRequest :datatype-) "p5/FollowPathRequest")
(setf (get p5::FollowPathRequest :definition-)
      "geometry_msgs/Point[] path

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")

(setf (get p5::FollowPathResponse :md5sum-) "b58b29f4d3d5430fc9d5efc2f5262786")
(setf (get p5::FollowPathResponse :datatype-) "p5/FollowPathResponse")
(setf (get p5::FollowPathResponse :definition-)
      "geometry_msgs/Point[] path

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")



(provide :p5/FollowPath "b58b29f4d3d5430fc9d5efc2f5262786")


