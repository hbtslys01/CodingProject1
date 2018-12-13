;; Auto-generated. Do not edit!


(when (boundp 'p5::ActionEffect)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'ActionEffect (find-package "P5")))
(unless (find-package "P5::ACTIONEFFECT")
  (make-package "P5::ACTIONEFFECT"))

(in-package "ROS")
;;//! \htmlinclude ActionEffect.msg.html


(defclass p5::ActionEffect
  :super ros::object
  :slots (_next_state _probability _reward ))

(defmethod p5::ActionEffect
  (:init
   (&key
    ((:next_state __next_state) (instance p5::State :init))
    ((:probability __probability) 0.0)
    ((:reward __reward) 0.0)
    )
   (send-super :init)
   (setq _next_state __next_state)
   (setq _probability (float __probability))
   (setq _reward (float __reward))
   self)
  (:next_state
   (&rest __next_state)
   (if (keywordp (car __next_state))
       (send* _next_state __next_state)
     (progn
       (if __next_state (setq _next_state (car __next_state)))
       _next_state)))
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; p5/State _next_state
    (send _next_state :serialization-length)
    ;; float64 _probability
    8
    ;; float64 _reward
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _next_state
       (send _next_state :serialize s)
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _next_state
     (send _next_state :deserialize buf ptr-) (incf ptr- (send _next_state :serialization-length))
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get p5::ActionEffect :md5sum-) "389fa51769ae72e234321be7110c4f63")
(setf (get p5::ActionEffect :datatype-) "p5/ActionEffect")
(setf (get p5::ActionEffect :definition-)
      "State next_state	# the state this action is transitioning to
float64 probability	# the probability of that transition occurring in this state
float64 reward		# the reward resulting from this transition

================================================================================
MSG: p5/State
int8 location
float64[5] distribution

")



(provide :p5/ActionEffect "389fa51769ae72e234321be7110c4f63")


