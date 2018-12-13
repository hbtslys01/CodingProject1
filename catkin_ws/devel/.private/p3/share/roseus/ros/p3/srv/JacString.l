;; Auto-generated. Do not edit!


(when (boundp 'p3::JacString)
  (if (not (find-package "P3"))
    (make-package "P3"))
  (shadow 'JacString (find-package "P3")))
(unless (find-package "P3::JACSTRING")
  (make-package "P3::JACSTRING"))
(unless (find-package "P3::JACSTRINGREQUEST")
  (make-package "P3::JACSTRINGREQUEST"))
(unless (find-package "P3::JACSTRINGRESPONSE")
  (make-package "P3::JACSTRINGRESPONSE"))

(in-package "ROS")





(defclass p3::JacStringRequest
  :super ros::object
  :slots ())

(defmethod p3::JacStringRequest
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

(defclass p3::JacStringResponse
  :super ros::object
  :slots (_jacobian ))

(defmethod p3::JacStringResponse
  (:init
   (&key
    ((:jacobian __jacobian) "")
    )
   (send-super :init)
   (setq _jacobian (string __jacobian))
   self)
  (:jacobian
   (&optional __jacobian)
   (if __jacobian (setq _jacobian __jacobian)) _jacobian)
  (:serialization-length
   ()
   (+
    ;; string _jacobian
    4 (length _jacobian)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _jacobian
       (write-long (length _jacobian) s) (princ _jacobian s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _jacobian
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _jacobian (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass p3::JacString
  :super ros::object
  :slots ())

(setf (get p3::JacString :md5sum-) "e10611babd37b65962dbe9c28cedb978")
(setf (get p3::JacString :datatype-) "p3/JacString")
(setf (get p3::JacString :request) p3::JacStringRequest)
(setf (get p3::JacString :response) p3::JacStringResponse)

(defmethod p3::JacStringRequest
  (:response () (instance p3::JacStringResponse :init)))

(setf (get p3::JacStringRequest :md5sum-) "e10611babd37b65962dbe9c28cedb978")
(setf (get p3::JacStringRequest :datatype-) "p3/JacStringRequest")
(setf (get p3::JacStringRequest :definition-)
      "---
string jacobian

")

(setf (get p3::JacStringResponse :md5sum-) "e10611babd37b65962dbe9c28cedb978")
(setf (get p3::JacStringResponse :datatype-) "p3/JacStringResponse")
(setf (get p3::JacStringResponse :definition-)
      "---
string jacobian

")



(provide :p3/JacString "e10611babd37b65962dbe9c28cedb978")


