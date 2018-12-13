;; Auto-generated. Do not edit!


(when (boundp 'p5::ComputeEntropy)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'ComputeEntropy (find-package "P5")))
(unless (find-package "P5::COMPUTEENTROPY")
  (make-package "P5::COMPUTEENTROPY"))
(unless (find-package "P5::COMPUTEENTROPYREQUEST")
  (make-package "P5::COMPUTEENTROPYREQUEST"))
(unless (find-package "P5::COMPUTEENTROPYRESPONSE")
  (make-package "P5::COMPUTEENTROPYRESPONSE"))

(in-package "ROS")





(defclass p5::ComputeEntropyRequest
  :super ros::object
  :slots (_distribution ))

(defmethod p5::ComputeEntropyRequest
  (:init
   (&key
    ((:distribution __distribution) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _distribution __distribution)
   self)
  (:distribution
   (&optional __distribution)
   (if __distribution (setq _distribution __distribution)) _distribution)
  (:serialization-length
   ()
   (+
    ;; float64[5] _distribution
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[5] _distribution
     (dotimes (i 5)
       (sys::poke (elt _distribution i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[5] _distribution
   (dotimes (i (length _distribution))
     (setf (elt _distribution i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass p5::ComputeEntropyResponse
  :super ros::object
  :slots (_entropy ))

(defmethod p5::ComputeEntropyResponse
  (:init
   (&key
    ((:entropy __entropy) 0.0)
    )
   (send-super :init)
   (setq _entropy (float __entropy))
   self)
  (:entropy
   (&optional __entropy)
   (if __entropy (setq _entropy __entropy)) _entropy)
  (:serialization-length
   ()
   (+
    ;; float64 _entropy
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _entropy
       (sys::poke _entropy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _entropy
     (setq _entropy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass p5::ComputeEntropy
  :super ros::object
  :slots ())

(setf (get p5::ComputeEntropy :md5sum-) "684ca74828f5f8845f5e461f587028b2")
(setf (get p5::ComputeEntropy :datatype-) "p5/ComputeEntropy")
(setf (get p5::ComputeEntropy :request) p5::ComputeEntropyRequest)
(setf (get p5::ComputeEntropy :response) p5::ComputeEntropyResponse)

(defmethod p5::ComputeEntropyRequest
  (:response () (instance p5::ComputeEntropyResponse :init)))

(setf (get p5::ComputeEntropyRequest :md5sum-) "684ca74828f5f8845f5e461f587028b2")
(setf (get p5::ComputeEntropyRequest :datatype-) "p5/ComputeEntropyRequest")
(setf (get p5::ComputeEntropyRequest :definition-)
      "float64[5] distribution
---
float64 entropy

")

(setf (get p5::ComputeEntropyResponse :md5sum-) "684ca74828f5f8845f5e461f587028b2")
(setf (get p5::ComputeEntropyResponse :datatype-) "p5/ComputeEntropyResponse")
(setf (get p5::ComputeEntropyResponse :definition-)
      "float64[5] distribution
---
float64 entropy

")



(provide :p5/ComputeEntropy "684ca74828f5f8845f5e461f587028b2")


