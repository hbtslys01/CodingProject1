;; Auto-generated. Do not edit!


(when (boundp 'p4::FollowPath)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'FollowPath (find-package "P4")))
(unless (find-package "P4::FOLLOWPATH")
  (make-package "P4::FOLLOWPATH"))
(unless (find-package "P4::FOLLOWPATHREQUEST")
  (make-package "P4::FOLLOWPATHREQUEST"))
(unless (find-package "P4::FOLLOWPATHRESPONSE")
  (make-package "P4::FOLLOWPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p4::FollowPathRequest
  :super ros::object
  :slots (_path ))

(defmethod p4::FollowPathRequest
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

(defclass p4::FollowPathResponse
  :super ros::object
  :slots ())

(defmethod p4::FollowPathResponse
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

(defclass p4::FollowPath
  :super ros::object
  :slots ())

(setf (get p4::FollowPath :md5sum-) "b58b29f4d3d5430fc9d5efc2f5262786")
(setf (get p4::FollowPath :datatype-) "p4/FollowPath")
(setf (get p4::FollowPath :request) p4::FollowPathRequest)
(setf (get p4::FollowPath :response) p4::FollowPathResponse)

(defmethod p4::FollowPathRequest
  (:response () (instance p4::FollowPathResponse :init)))

(setf (get p4::FollowPathRequest :md5sum-) "b58b29f4d3d5430fc9d5efc2f5262786")
(setf (get p4::FollowPathRequest :datatype-) "p4/FollowPathRequest")
(setf (get p4::FollowPathRequest :definition-)
      "geometry_msgs/Point[] path

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")

(setf (get p4::FollowPathResponse :md5sum-) "b58b29f4d3d5430fc9d5efc2f5262786")
(setf (get p4::FollowPathResponse :datatype-) "p4/FollowPathResponse")
(setf (get p4::FollowPathResponse :definition-)
      "geometry_msgs/Point[] path

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---

")



(provide :p4/FollowPath "b58b29f4d3d5430fc9d5efc2f5262786")


