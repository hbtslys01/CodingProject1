;; Auto-generated. Do not edit!


(when (boundp 'p5::ChooseAction)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'ChooseAction (find-package "P5")))
(unless (find-package "P5::CHOOSEACTION")
  (make-package "P5::CHOOSEACTION"))
(unless (find-package "P5::CHOOSEACTIONREQUEST")
  (make-package "P5::CHOOSEACTIONREQUEST"))
(unless (find-package "P5::CHOOSEACTIONRESPONSE")
  (make-package "P5::CHOOSEACTIONRESPONSE"))

(in-package "ROS")





(defclass p5::ChooseActionRequest
  :super ros::object
  :slots (_state ))

(defmethod p5::ChooseActionRequest
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

(defclass p5::ChooseActionResponse
  :super ros::object
  :slots (_next_action ))

(defmethod p5::ChooseActionResponse
  (:init
   (&key
    ((:next_action __next_action) (instance p5::Action :init))
    )
   (send-super :init)
   (setq _next_action __next_action)
   self)
  (:next_action
   (&rest __next_action)
   (if (keywordp (car __next_action))
       (send* _next_action __next_action)
     (progn
       (if __next_action (setq _next_action (car __next_action)))
       _next_action)))
  (:serialization-length
   ()
   (+
    ;; p5/Action _next_action
    (send _next_action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/Action _next_action
       (send _next_action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/Action _next_action
     (send _next_action :deserialize buf ptr-) (incf ptr- (send _next_action :serialization-length))
   ;;
   self)
  )

(defclass p5::ChooseAction
  :super ros::object
  :slots ())

(setf (get p5::ChooseAction :md5sum-) "0b388a89a907fef764c8117a010b7015")
(setf (get p5::ChooseAction :datatype-) "p5/ChooseAction")
(setf (get p5::ChooseAction :request) p5::ChooseActionRequest)
(setf (get p5::ChooseAction :response) p5::ChooseActionResponse)

(defmethod p5::ChooseActionRequest
  (:response () (instance p5::ChooseActionResponse :init)))

(setf (get p5::ChooseActionRequest :md5sum-) "0b388a89a907fef764c8117a010b7015")
(setf (get p5::ChooseActionRequest :datatype-) "p5/ChooseActionRequest")
(setf (get p5::ChooseActionRequest :definition-)
      "State state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
Action next_action


================================================================================
MSG: p5/Action
int8 STOP = -1
int8 SENSE = 0
int8 MOVE1 = 1
int8 MOVE2 = 2
int8 MOVE3 = 3
int8 MOVE4 = 4
int8 MOVE5 = 5

int8 name
")

(setf (get p5::ChooseActionResponse :md5sum-) "0b388a89a907fef764c8117a010b7015")
(setf (get p5::ChooseActionResponse :datatype-) "p5/ChooseActionResponse")
(setf (get p5::ChooseActionResponse :definition-)
      "State state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
Action next_action


================================================================================
MSG: p5/Action
int8 STOP = -1
int8 SENSE = 0
int8 MOVE1 = 1
int8 MOVE2 = 2
int8 MOVE3 = 3
int8 MOVE4 = 4
int8 MOVE5 = 5

int8 name
")



(provide :p5/ChooseAction "0b388a89a907fef764c8117a010b7015")


