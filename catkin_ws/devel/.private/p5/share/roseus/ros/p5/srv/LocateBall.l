;; Auto-generated. Do not edit!


(when (boundp 'p5::LocateBall)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'LocateBall (find-package "P5")))
(unless (find-package "P5::LOCATEBALL")
  (make-package "P5::LOCATEBALL"))
(unless (find-package "P5::LOCATEBALLREQUEST")
  (make-package "P5::LOCATEBALLREQUEST"))
(unless (find-package "P5::LOCATEBALLRESPONSE")
  (make-package "P5::LOCATEBALLRESPONSE"))

(in-package "ROS")





(defclass p5::LocateBallRequest
  :super ros::object
  :slots (_start_state ))

(defmethod p5::LocateBallRequest
  (:init
   (&key
    ((:start_state __start_state) (instance p5::State :init))
    )
   (send-super :init)
   (setq _start_state __start_state)
   self)
  (:start_state
   (&rest __start_state)
   (if (keywordp (car __start_state))
       (send* _start_state __start_state)
     (progn
       (if __start_state (setq _start_state (car __start_state)))
       _start_state)))
  (:serialization-length
   ()
   (+
    ;; p5/State _start_state
    (send _start_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _start_state
       (send _start_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _start_state
     (send _start_state :deserialize buf ptr-) (incf ptr- (send _start_state :serialization-length))
   ;;
   self)
  )

(defclass p5::LocateBallResponse
  :super ros::object
  :slots (_final_state ))

(defmethod p5::LocateBallResponse
  (:init
   (&key
    ((:final_state __final_state) (instance p5::State :init))
    )
   (send-super :init)
   (setq _final_state __final_state)
   self)
  (:final_state
   (&rest __final_state)
   (if (keywordp (car __final_state))
       (send* _final_state __final_state)
     (progn
       (if __final_state (setq _final_state (car __final_state)))
       _final_state)))
  (:serialization-length
   ()
   (+
    ;; p5/State _final_state
    (send _final_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _final_state
       (send _final_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _final_state
     (send _final_state :deserialize buf ptr-) (incf ptr- (send _final_state :serialization-length))
   ;;
   self)
  )

(defclass p5::LocateBall
  :super ros::object
  :slots ())

(setf (get p5::LocateBall :md5sum-) "65f6ab9ab3fd57fefb3b520f3851d0af")
(setf (get p5::LocateBall :datatype-) "p5/LocateBall")
(setf (get p5::LocateBall :request) p5::LocateBallRequest)
(setf (get p5::LocateBall :response) p5::LocateBallResponse)

(defmethod p5::LocateBallRequest
  (:response () (instance p5::LocateBallResponse :init)))

(setf (get p5::LocateBallRequest :md5sum-) "65f6ab9ab3fd57fefb3b520f3851d0af")
(setf (get p5::LocateBallRequest :datatype-) "p5/LocateBallRequest")
(setf (get p5::LocateBallRequest :definition-)
      "State start_state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
State final_state


================================================================================
MSG: p5/State
int8 location
float64[5] distribution
")

(setf (get p5::LocateBallResponse :md5sum-) "65f6ab9ab3fd57fefb3b520f3851d0af")
(setf (get p5::LocateBallResponse :datatype-) "p5/LocateBallResponse")
(setf (get p5::LocateBallResponse :definition-)
      "State start_state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
State final_state


================================================================================
MSG: p5/State
int8 location
float64[5] distribution
")



(provide :p5/LocateBall "65f6ab9ab3fd57fefb3b520f3851d0af")


