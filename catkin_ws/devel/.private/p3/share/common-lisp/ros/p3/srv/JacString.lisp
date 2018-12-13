; Auto-generated. Do not edit!


(cl:in-package p3-srv)


;//! \htmlinclude JacString-request.msg.html

(cl:defclass <JacString-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JacString-request (<JacString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JacString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JacString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p3-srv:<JacString-request> is deprecated: use p3-srv:JacString-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JacString-request>) ostream)
  "Serializes a message object of type '<JacString-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JacString-request>) istream)
  "Deserializes a message object of type '<JacString-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JacString-request>)))
  "Returns string type for a service object of type '<JacString-request>"
  "p3/JacStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JacString-request)))
  "Returns string type for a service object of type 'JacString-request"
  "p3/JacStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JacString-request>)))
  "Returns md5sum for a message object of type '<JacString-request>"
  "e10611babd37b65962dbe9c28cedb978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JacString-request)))
  "Returns md5sum for a message object of type 'JacString-request"
  "e10611babd37b65962dbe9c28cedb978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JacString-request>)))
  "Returns full string definition for message of type '<JacString-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JacString-request)))
  "Returns full string definition for message of type 'JacString-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JacString-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JacString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JacString-request
))
;//! \htmlinclude JacString-response.msg.html

(cl:defclass <JacString-response> (roslisp-msg-protocol:ros-message)
  ((jacobian
    :reader jacobian
    :initarg :jacobian
    :type cl:string
    :initform ""))
)

(cl:defclass JacString-response (<JacString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JacString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JacString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p3-srv:<JacString-response> is deprecated: use p3-srv:JacString-response instead.")))

(cl:ensure-generic-function 'jacobian-val :lambda-list '(m))
(cl:defmethod jacobian-val ((m <JacString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p3-srv:jacobian-val is deprecated.  Use p3-srv:jacobian instead.")
  (jacobian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JacString-response>) ostream)
  "Serializes a message object of type '<JacString-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'jacobian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'jacobian))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JacString-response>) istream)
  "Deserializes a message object of type '<JacString-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jacobian) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'jacobian) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JacString-response>)))
  "Returns string type for a service object of type '<JacString-response>"
  "p3/JacStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JacString-response)))
  "Returns string type for a service object of type 'JacString-response"
  "p3/JacStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JacString-response>)))
  "Returns md5sum for a message object of type '<JacString-response>"
  "e10611babd37b65962dbe9c28cedb978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JacString-response)))
  "Returns md5sum for a message object of type 'JacString-response"
  "e10611babd37b65962dbe9c28cedb978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JacString-response>)))
  "Returns full string definition for message of type '<JacString-response>"
  (cl:format cl:nil "string jacobian~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JacString-response)))
  "Returns full string definition for message of type 'JacString-response"
  (cl:format cl:nil "string jacobian~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JacString-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'jacobian))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JacString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JacString-response
    (cl:cons ':jacobian (jacobian msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JacString)))
  'JacString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JacString)))
  'JacString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JacString)))
  "Returns string type for a service object of type '<JacString>"
  "p3/JacString")