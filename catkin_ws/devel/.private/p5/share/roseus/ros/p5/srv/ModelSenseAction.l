;; Auto-generated. Do not edit!


(when (boundp 'p5::ModelSenseAction)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'ModelSenseAction (find-package "P5")))
(unless (find-package "P5::MODELSENSEACTION")
  (make-package "P5::MODELSENSEACTION"))
(unless (find-package "P5::MODELSENSEACTIONREQUEST")
  (make-package "P5::MODELSENSEACTIONREQUEST"))
(unless (find-package "P5::MODELSENSEACTIONRESPONSE")
  (make-package "P5::MODELSENSEACTIONRESPONSE"))

(in-package "ROS")





(defclass p5::ModelSenseActionRequest
  :super ros::object
  :slots (_state ))

(defmethod p5::ModelSenseActionRequest
  (:init
   (&key
    ((:state __state) (instance p5::State :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; p5/State _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass p5::ModelSenseActionResponse
  :super ros::object
  :slots (_distribution ))

(defmethod p5::ModelSenseActionResponse
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

(defclass p5::ModelSenseAction
  :super ros::object
  :slots ())

(setf (get p5::ModelSenseAction :md5sum-) "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(setf (get p5::ModelSenseAction :datatype-) "p5/ModelSenseAction")
(setf (get p5::ModelSenseAction :request) p5::ModelSenseActionRequest)
(setf (get p5::ModelSenseAction :response) p5::ModelSenseActionResponse)

(defmethod p5::ModelSenseActionRequest
  (:response () (instance p5::ModelSenseActionResponse :init)))

(setf (get p5::ModelSenseActionRequest :md5sum-) "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(setf (get p5::ModelSenseActionRequest :datatype-) "p5/ModelSenseActionRequest")
(setf (get p5::ModelSenseActionRequest :definition-)
      "State state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
float64[5] distribution

")

(setf (get p5::ModelSenseActionResponse :md5sum-) "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(setf (get p5::ModelSenseActionResponse :datatype-) "p5/ModelSenseActionResponse")
(setf (get p5::ModelSenseActionResponse :definition-)
      "State state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
float64[5] distribution

")



(provide :p5/ModelSenseAction "ccc320a8f7fd9b1f63d549e5acbe4ce5")


