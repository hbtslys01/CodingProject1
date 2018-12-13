;; Auto-generated. Do not edit!


(when (boundp 'p5::CommandRobot)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'CommandRobot (find-package "P5")))
(unless (find-package "P5::COMMANDROBOT")
  (make-package "P5::COMMANDROBOT"))
(unless (find-package "P5::COMMANDROBOTREQUEST")
  (make-package "P5::COMMANDROBOTREQUEST"))
(unless (find-package "P5::COMMANDROBOTRESPONSE")
  (make-package "P5::COMMANDROBOTRESPONSE"))

(in-package "ROS")





(defclass p5::CommandRobotRequest
  :super ros::object
  :slots (_state _action ))

(defmethod p5::CommandRobotRequest
  (:init
   (&key
    ((:state __state) (instance p5::State :init))
    ((:action __action) (instance p5::Action :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _action __action)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:serialization-length
   ()
   (+
    ;; p5/State _state
    (send _state :serialization-length)
    ;; p5/Action _action
    (send _action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _state
       (send _state :serialize s)
     ;; p5/Action _action
       (send _action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; p5/Action _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;;
   self)
  )

(defclass p5::CommandRobotResponse
  :super ros::object
  :slots (_next_state ))

(defmethod p5::CommandRobotResponse
  (:init
   (&key
    ((:next_state __next_state) (instance p5::State :init))
    )
   (send-super :init)
   (setq _next_state __next_state)
   self)
  (:next_state
   (&rest __next_state)
   (if (keywordp (car __next_state))
       (send* _next_state __next_state)
     (progn
       (if __next_state (setq _next_state (car __next_state)))
       _next_state)))
  (:serialization-length
   ()
   (+
    ;; p5/State _next_state
    (send _next_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _next_state
       (send _next_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _next_state
     (send _next_state :deserialize buf ptr-) (incf ptr- (send _next_state :serialization-length))
   ;;
   self)
  )

(defclass p5::CommandRobot
  :super ros::object
  :slots ())

(setf (get p5::CommandRobot :md5sum-) "744a27ef9dbc5d25c1c0c348dc1c1401")
(setf (get p5::CommandRobot :datatype-) "p5/CommandRobot")
(setf (get p5::CommandRobot :request) p5::CommandRobotRequest)
(setf (get p5::CommandRobot :response) p5::CommandRobotResponse)

(defmethod p5::CommandRobotRequest
  (:response () (instance p5::CommandRobotResponse :init)))

(setf (get p5::CommandRobotRequest :md5sum-) "744a27ef9dbc5d25c1c0c348dc1c1401")
(setf (get p5::CommandRobotRequest :datatype-) "p5/CommandRobotRequest")
(setf (get p5::CommandRobotRequest :definition-)
      "State state
Action action

================================================================================
MSG: p5/State
int8 location
float64[5] distribution

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
---
State next_state


================================================================================
MSG: p5/State
int8 location
float64[5] distribution
")

(setf (get p5::CommandRobotResponse :md5sum-) "744a27ef9dbc5d25c1c0c348dc1c1401")
(setf (get p5::CommandRobotResponse :datatype-) "p5/CommandRobotResponse")
(setf (get p5::CommandRobotResponse :definition-)
      "State state
Action action

================================================================================
MSG: p5/State
int8 location
float64[5] distribution

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
---
State next_state


================================================================================
MSG: p5/State
int8 location
float64[5] distribution
")



(provide :p5/CommandRobot "744a27ef9dbc5d25c1c0c348dc1c1401")


