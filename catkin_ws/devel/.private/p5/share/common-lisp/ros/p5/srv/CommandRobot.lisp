; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude CommandRobot-request.msg.html

(cl:defclass <CommandRobot-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State))
   (action
    :reader action
    :initarg :action
    :type p5-msg:Action
    :initform (cl:make-instance 'p5-msg:Action)))
)

(cl:defclass CommandRobot-request (<CommandRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<CommandRobot-request> is deprecated: use p5-srv:CommandRobot-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CommandRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:state-val is deprecated.  Use p5-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <CommandRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:action-val is deprecated.  Use p5-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandRobot-request>) ostream)
  "Serializes a message object of type '<CommandRobot-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandRobot-request>) istream)
  "Deserializes a message object of type '<CommandRobot-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandRobot-request>)))
  "Returns string type for a service object of type '<CommandRobot-request>"
  "p5/CommandRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRobot-request)))
  "Returns string type for a service object of type 'CommandRobot-request"
  "p5/CommandRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandRobot-request>)))
  "Returns md5sum for a message object of type '<CommandRobot-request>"
  "744a27ef9dbc5d25c1c0c348dc1c1401")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandRobot-request)))
  "Returns md5sum for a message object of type 'CommandRobot-request"
  "744a27ef9dbc5d25c1c0c348dc1c1401")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandRobot-request>)))
  "Returns full string definition for message of type '<CommandRobot-request>"
  (cl:format cl:nil "State state~%Action action~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandRobot-request)))
  "Returns full string definition for message of type 'CommandRobot-request"
  (cl:format cl:nil "State state~%Action action~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandRobot-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandRobot-request
    (cl:cons ':state (state msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude CommandRobot-response.msg.html

(cl:defclass <CommandRobot-response> (roslisp-msg-protocol:ros-message)
  ((next_state
    :reader next_state
    :initarg :next_state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State)))
)

(cl:defclass CommandRobot-response (<CommandRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<CommandRobot-response> is deprecated: use p5-srv:CommandRobot-response instead.")))

(cl:ensure-generic-function 'next_state-val :lambda-list '(m))
(cl:defmethod next_state-val ((m <CommandRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:next_state-val is deprecated.  Use p5-srv:next_state instead.")
  (next_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandRobot-response>) ostream)
  "Serializes a message object of type '<CommandRobot-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandRobot-response>) istream)
  "Deserializes a message object of type '<CommandRobot-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandRobot-response>)))
  "Returns string type for a service object of type '<CommandRobot-response>"
  "p5/CommandRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRobot-response)))
  "Returns string type for a service object of type 'CommandRobot-response"
  "p5/CommandRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandRobot-response>)))
  "Returns md5sum for a message object of type '<CommandRobot-response>"
  "744a27ef9dbc5d25c1c0c348dc1c1401")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandRobot-response)))
  "Returns md5sum for a message object of type 'CommandRobot-response"
  "744a27ef9dbc5d25c1c0c348dc1c1401")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandRobot-response>)))
  "Returns full string definition for message of type '<CommandRobot-response>"
  (cl:format cl:nil "State next_state~%~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandRobot-response)))
  "Returns full string definition for message of type 'CommandRobot-response"
  (cl:format cl:nil "State next_state~%~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandRobot-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandRobot-response
    (cl:cons ':next_state (next_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandRobot)))
  'CommandRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandRobot)))
  'CommandRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRobot)))
  "Returns string type for a service object of type '<CommandRobot>"
  "p5/CommandRobot")