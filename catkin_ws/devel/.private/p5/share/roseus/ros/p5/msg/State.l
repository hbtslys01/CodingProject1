;; Auto-generated. Do not edit!


(when (boundp 'p5::State)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'State (find-package "P5")))
(unless (find-package "P5::STATE")
  (make-package "P5::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass p5::State
  :super ros::object
  :slots (_location _distribution ))

(defmethod p5::State
  (:init
   (&key
    ((:location __location) 0)
    ((:distribution __distribution) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _location (round __location))
   (setq _distribution __distribution)
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:distribution
   (&optional __distribution)
   (if __distribution (setq _distribution __distribution)) _distribution)
  (:serialization-length
   ()
   (+
    ;; int8 _location
    1
    ;; float64[5] _distribution
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _location
       (write-byte _location s)
     ;; float64[5] _distribution
     (dotimes (i 5)
       (sys::poke (elt _distribution i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _location
     (setq _location (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _location 127) (setq _location (- _location 256)))
   ;; float64[5] _distribution
   (dotimes (i (length _distribution))
     (setf (elt _distribution i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get p5::State :md5sum-) "da5e6c451f1acea84b76d43f796ecca1")
(setf (get p5::State :datatype-) "p5/State")
(setf (get p5::State :definition-)
      "int8 location
float64[5] distribution

")



(provide :p5/State "da5e6c451f1acea84b76d43f796ecca1")


