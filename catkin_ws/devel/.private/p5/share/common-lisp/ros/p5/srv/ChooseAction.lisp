; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude ChooseAction-request.msg.html

(cl:defclass <ChooseAction-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State)))
)

(cl:defclass ChooseAction-request (<ChooseAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChooseAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChooseAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ChooseAction-request> is deprecated: use p5-srv:ChooseAction-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChooseAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:state-val is deprecated.  Use p5-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChooseAction-request>) ostream)
  "Serializes a message object of type '<ChooseAction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChooseAction-request>) istream)
  "Deserializes a message object of type '<ChooseAction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChooseAction-request>)))
  "Returns string type for a service object of type '<ChooseAction-request>"
  "p5/ChooseActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChooseAction-request)))
  "Returns string type for a service object of type 'ChooseAction-request"
  "p5/ChooseActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChooseAction-request>)))
  "Returns md5sum for a message object of type '<ChooseAction-request>"
  "0b388a89a907fef764c8117a010b7015")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChooseAction-request)))
  "Returns md5sum for a message object of type 'ChooseAction-request"
  "0b388a89a907fef764c8117a010b7015")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChooseAction-request>)))
  "Returns full string definition for message of type '<ChooseAction-request>"
  (cl:format cl:nil "State state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChooseAction-request)))
  "Returns full string definition for message of type 'ChooseAction-request"
  (cl:format cl:nil "State state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChooseAction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChooseAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChooseAction-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChooseAction-response.msg.html

(cl:defclass <ChooseAction-response> (roslisp-msg-protocol:ros-message)
  ((next_action
    :reader next_action
    :initarg :next_action
    :type p5-msg:Action
    :initform (cl:make-instance 'p5-msg:Action)))
)

(cl:defclass ChooseAction-response (<ChooseAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChooseAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChooseAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ChooseAction-response> is deprecated: use p5-srv:ChooseAction-response instead.")))

(cl:ensure-generic-function 'next_action-val :lambda-list '(m))
(cl:defmethod next_action-val ((m <ChooseAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:next_action-val is deprecated.  Use p5-srv:next_action instead.")
  (next_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChooseAction-response>) ostream)
  "Serializes a message object of type '<ChooseAction-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChooseAction-response>) istream)
  "Deserializes a message object of type '<ChooseAction-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChooseAction-response>)))
  "Returns string type for a service object of type '<ChooseAction-response>"
  "p5/ChooseActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChooseAction-response)))
  "Returns string type for a service object of type 'ChooseAction-response"
  "p5/ChooseActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChooseAction-response>)))
  "Returns md5sum for a message object of type '<ChooseAction-response>"
  "0b388a89a907fef764c8117a010b7015")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChooseAction-response)))
  "Returns md5sum for a message object of type 'ChooseAction-response"
  "0b388a89a907fef764c8117a010b7015")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChooseAction-response>)))
  "Returns full string definition for message of type '<ChooseAction-response>"
  (cl:format cl:nil "Action next_action~%~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChooseAction-response)))
  "Returns full string definition for message of type 'ChooseAction-response"
  (cl:format cl:nil "Action next_action~%~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChooseAction-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChooseAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChooseAction-response
    (cl:cons ':next_action (next_action msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChooseAction)))
  'ChooseAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChooseAction)))
  'ChooseAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChooseAction)))
  "Returns string type for a service object of type '<ChooseAction>"
  "p5/ChooseAction")