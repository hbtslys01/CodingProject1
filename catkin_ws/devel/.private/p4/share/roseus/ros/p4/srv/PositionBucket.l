;; Auto-generated. Do not edit!


(when (boundp 'p4::PositionBucket)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'PositionBucket (find-package "P4")))
(unless (find-package "P4::POSITIONBUCKET")
  (make-package "P4::POSITIONBUCKET"))
(unless (find-package "P4::POSITIONBUCKETREQUEST")
  (make-package "P4::POSITIONBUCKETREQUEST"))
(unless (find-package "P4::POSITIONBUCKETRESPONSE")
  (make-package "P4::POSITIONBUCKETRESPONSE"))

(in-package "ROS")





(defclass p4::PositionBucketRequest
  :super ros::object
  :slots ())

(defmethod p4::PositionBucketRequest
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

(defclass p4::PositionBucketResponse
  :super ros::object
  :slots ())

(defmethod p4::PositionBucketResponse
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

(defclass p4::PositionBucket
  :super ros::object
  :slots ())

(setf (get p4::PositionBucket :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get p4::PositionBucket :datatype-) "p4/PositionBucket")
(setf (get p4::PositionBucket :request) p4::PositionBucketRequest)
(setf (get p4::PositionBucket :response) p4::PositionBucketResponse)

(defmethod p4::PositionBucketRequest
  (:response () (instance p4::PositionBucketResponse :init)))

(setf (get p4::PositionBucketRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get p4::PositionBucketRequest :datatype-) "p4/PositionBucketRequest")
(setf (get p4::PositionBucketRequest :definition-)
      "---


")

(setf (get p4::PositionBucketResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get p4::PositionBucketResponse :datatype-) "p4/PositionBucketResponse")
(setf (get p4::PositionBucketResponse :definition-)
      "---


")



(provide :p4/PositionBucket "d41d8cd98f00b204e9800998ecf8427e")


