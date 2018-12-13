;; Auto-generated. Do not edit!


(when (boundp 'p4::ClosestPointPath)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'ClosestPointPath (find-package "P4")))
(unless (find-package "P4::CLOSESTPOINTPATH")
  (make-package "P4::CLOSESTPOINTPATH"))
(unless (find-package "P4::CLOSESTPOINTPATHREQUEST")
  (make-package "P4::CLOSESTPOINTPATHREQUEST"))
(unless (find-package "P4::CLOSESTPOINTPATHRESPONSE")
  (make-package "P4::CLOSESTPOINTPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass p4::ClosestPointPathRequest
  :super ros::object
  :slots (_robot_position _path ))

(defmethod p4::ClosestPointPathRequest
  (:init
   (&key
    ((:robot_position __robot_position) (instance geometry_msgs::Point :init))
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _robot_position __robot_position)
   (setq _path __path)
   self)
  (:robot_position
   (&rest __robot_position)
   (if (keywordp (car __robot_position))
       (send* _robot_position __robot_position)
     (progn
       (if __robot_position (setq _robot_position (car __robot_position)))
       _robot_position)))
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
    ;; geometry_msgs/Point _robot_position
    (send _robot_position :serialization-length)
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _robot_position
       (send _robot_position :serialize s)
     ;; geometry_msgs/Point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _robot_position
     (send _robot_position :deserialize buf ptr-) (incf ptr- (send _robot_position :serialization-length))
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

(defclass p4::ClosestPointPathResponse
  :super ros::object
  :slots (_closest_point _path_position _dist_to_path ))

(defmethod p4::ClosestPointPathResponse
  (:init
   (&key
    ((:closest_point __closest_point) (instance geometry_msgs::Point :init))
    ((:path_position __path_position) (instance std_msgs::Float32 :init))
    ((:dist_to_path __dist_to_path) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _closest_point __closest_point)
   (setq _path_position __path_position)
   (setq _dist_to_path __dist_to_path)
   self)
  (:closest_point
   (&rest __closest_point)
   (if (keywordp (car __closest_point))
       (send* _closest_point __closest_point)
     (progn
       (if __closest_point (setq _closest_point (car __closest_point)))
       _closest_point)))
  (:path_position
   (&rest __path_position)
   (if (keywordp (car __path_position))
       (send* _path_position __path_position)
     (progn
       (if __path_position (setq _path_position (car __path_position)))
       _path_position)))
  (:dist_to_path
   (&rest __dist_to_path)
   (if (keywordp (car __dist_to_path))
       (send* _dist_to_path __dist_to_path)
     (progn
       (if __dist_to_path (setq _dist_to_path (car __dist_to_path)))
       _dist_to_path)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _closest_point
    (send _closest_point :serialization-length)
    ;; std_msgs/Float32 _path_position
    (send _path_position :serialization-length)
    ;; std_msgs/Float32 _dist_to_path
    (send _dist_to_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _closest_point
       (send _closest_point :serialize s)
     ;; std_msgs/Float32 _path_position
       (send _path_position :serialize s)
     ;; std_msgs/Float32 _dist_to_path
       (send _dist_to_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _closest_point
     (send _closest_point :deserialize buf ptr-) (incf ptr- (send _closest_point :serialization-length))
   ;; std_msgs/Float32 _path_position
     (send _path_position :deserialize buf ptr-) (incf ptr- (send _path_position :serialization-length))
   ;; std_msgs/Float32 _dist_to_path
     (send _dist_to_path :deserialize buf ptr-) (incf ptr- (send _dist_to_path :serialization-length))
   ;;
   self)
  )

(defclass p4::ClosestPointPath
  :super ros::object
  :slots ())

(setf (get p4::ClosestPointPath :md5sum-) "a4eb7978da311d6bb271e96cc9f6a8e7")
(setf (get p4::ClosestPointPath :datatype-) "p4/ClosestPointPath")
(setf (get p4::ClosestPointPath :request) p4::ClosestPointPathRequest)
(setf (get p4::ClosestPointPath :response) p4::ClosestPointPathResponse)

(defmethod p4::ClosestPointPathRequest
  (:response () (instance p4::ClosestPointPathResponse :init)))

(setf (get p4::ClosestPointPathRequest :md5sum-) "a4eb7978da311d6bb271e96cc9f6a8e7")
(setf (get p4::ClosestPointPathRequest :datatype-) "p4/ClosestPointPathRequest")
(setf (get p4::ClosestPointPathRequest :definition-)
      "geometry_msgs/Point robot_position
geometry_msgs/Point[] path

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point closest_point
std_msgs/Float32 path_position
std_msgs/Float32 dist_to_path


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Float32
")

(setf (get p4::ClosestPointPathResponse :md5sum-) "a4eb7978da311d6bb271e96cc9f6a8e7")
(setf (get p4::ClosestPointPathResponse :datatype-) "p4/ClosestPointPathResponse")
(setf (get p4::ClosestPointPathResponse :definition-)
      "geometry_msgs/Point robot_position
geometry_msgs/Point[] path

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point closest_point
std_msgs/Float32 path_position
std_msgs/Float32 dist_to_path


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Float32
")



(provide :p4/ClosestPointPath "a4eb7978da311d6bb271e96cc9f6a8e7")


