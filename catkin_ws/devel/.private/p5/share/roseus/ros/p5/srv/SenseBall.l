;; Auto-generated. Do not edit!


(when (boundp 'p5::SenseBall)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'SenseBall (find-package "P5")))
(unless (find-package "P5::SENSEBALL")
  (make-package "P5::SENSEBALL"))
(unless (find-package "P5::SENSEBALLREQUEST")
  (make-package "P5::SENSEBALLREQUEST"))
(unless (find-package "P5::SENSEBALLRESPONSE")
  (make-package "P5::SENSEBALLRESPONSE"))

(in-package "ROS")





(defclass p5::SenseBallRequest
  :super ros::object
  :slots (_prior ))

(defmethod p5::SenseBallRequest
  (:init
   (&key
    ((:prior __prior) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _prior __prior)
   self)
  (:prior
   (&optional __prior)
   (if __prior (setq _prior __prior)) _prior)
  (:serialization-length
   ()
   (+
    ;; float64[5] _prior
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[5] _prior
     (dotimes (i 5)
       (sys::poke (elt _prior i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[5] _prior
   (dotimes (i (length _prior))
     (setf (elt _prior i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass p5::SenseBallResponse
  :super ros::object
  :slots (_distribution ))

(defmethod p5::SenseBallResponse
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

(defclass p5::SenseBall
  :super ros::object
  :slots ())

(setf (get p5::SenseBall :md5sum-) "8ce6ebce87f7bc56c55f1869e06cebba")
(setf (get p5::SenseBall :datatype-) "p5/SenseBall")
(setf (get p5::SenseBall :request) p5::SenseBallRequest)
(setf (get p5::SenseBall :response) p5::SenseBallResponse)

(defmethod p5::SenseBallRequest
  (:response () (instance p5::SenseBallResponse :init)))

(setf (get p5::SenseBallRequest :md5sum-) "8ce6ebce87f7bc56c55f1869e06cebba")
(setf (get p5::SenseBallRequest :datatype-) "p5/SenseBallRequest")
(setf (get p5::SenseBallRequest :definition-)
      "float64[5] prior
---
float64[5] distribution

")

(setf (get p5::SenseBallResponse :md5sum-) "8ce6ebce87f7bc56c55f1869e06cebba")
(setf (get p5::SenseBallResponse :datatype-) "p5/SenseBallResponse")
(setf (get p5::SenseBallResponse :definition-)
      "float64[5] prior
---
float64[5] distribution

")



(provide :p5/SenseBall "8ce6ebce87f7bc56c55f1869e06cebba")


