; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude LocateBall-request.msg.html

(cl:defclass <LocateBall-request> (roslisp-msg-protocol:ros-message)
  ((start_state
    :reader start_state
    :initarg :start_state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State)))
)

(cl:defclass LocateBall-request (<LocateBall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocateBall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocateBall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<LocateBall-request> is deprecated: use p5-srv:LocateBall-request instead.")))

(cl:ensure-generic-function 'start_state-val :lambda-list '(m))
(cl:defmethod start_state-val ((m <LocateBall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:start_state-val is deprecated.  Use p5-srv:start_state instead.")
  (start_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocateBall-request>) ostream)
  "Serializes a message object of type '<LocateBall-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocateBall-request>) istream)
  "Deserializes a message object of type '<LocateBall-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocateBall-request>)))
  "Returns string type for a service object of type '<LocateBall-request>"
  "p5/LocateBallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocateBall-request)))
  "Returns string type for a service object of type 'LocateBall-request"
  "p5/LocateBallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocateBall-request>)))
  "Returns md5sum for a message object of type '<LocateBall-request>"
  "65f6ab9ab3fd57fefb3b520f3851d0af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocateBall-request)))
  "Returns md5sum for a message object of type 'LocateBall-request"
  "65f6ab9ab3fd57fefb3b520f3851d0af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocateBall-request>)))
  "Returns full string definition for message of type '<LocateBall-request>"
  (cl:format cl:nil "State start_state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocateBall-request)))
  "Returns full string definition for message of type 'LocateBall-request"
  (cl:format cl:nil "State start_state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocateBall-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocateBall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocateBall-request
    (cl:cons ':start_state (start_state msg))
))
;//! \htmlinclude LocateBall-response.msg.html

(cl:defclass <LocateBall-response> (roslisp-msg-protocol:ros-message)
  ((final_state
    :reader final_state
    :initarg :final_state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State)))
)

(cl:defclass LocateBall-response (<LocateBall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocateBall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocateBall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<LocateBall-response> is deprecated: use p5-srv:LocateBall-response instead.")))

(cl:ensure-generic-function 'final_state-val :lambda-list '(m))
(cl:defmethod final_state-val ((m <LocateBall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:final_state-val is deprecated.  Use p5-srv:final_state instead.")
  (final_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocateBall-response>) ostream)
  "Serializes a message object of type '<LocateBall-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocateBall-response>) istream)
  "Deserializes a message object of type '<LocateBall-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocateBall-response>)))
  "Returns string type for a service object of type '<LocateBall-response>"
  "p5/LocateBallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocateBall-response)))
  "Returns string type for a service object of type 'LocateBall-response"
  "p5/LocateBallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocateBall-response>)))
  "Returns md5sum for a message object of type '<LocateBall-response>"
  "65f6ab9ab3fd57fefb3b520f3851d0af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocateBall-response)))
  "Returns md5sum for a message object of type 'LocateBall-response"
  "65f6ab9ab3fd57fefb3b520f3851d0af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocateBall-response>)))
  "Returns full string definition for message of type '<LocateBall-response>"
  (cl:format cl:nil "State final_state~%~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocateBall-response)))
  "Returns full string definition for message of type 'LocateBall-response"
  (cl:format cl:nil "State final_state~%~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocateBall-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocateBall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocateBall-response
    (cl:cons ':final_state (final_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocateBall)))
  'LocateBall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocateBall)))
  'LocateBall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocateBall)))
  "Returns string type for a service object of type '<LocateBall>"
  "p5/LocateBall")