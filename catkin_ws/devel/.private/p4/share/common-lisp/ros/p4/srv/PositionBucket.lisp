; Auto-generated. Do not edit!


(cl:in-package p4-srv)


;//! \htmlinclude PositionBucket-request.msg.html

(cl:defclass <PositionBucket-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PositionBucket-request (<PositionBucket-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionBucket-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionBucket-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<PositionBucket-request> is deprecated: use p4-srv:PositionBucket-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionBucket-request>) ostream)
  "Serializes a message object of type '<PositionBucket-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionBucket-request>) istream)
  "Deserializes a message object of type '<PositionBucket-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionBucket-request>)))
  "Returns string type for a service object of type '<PositionBucket-request>"
  "p4/PositionBucketRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionBucket-request)))
  "Returns string type for a service object of type 'PositionBucket-request"
  "p4/PositionBucketRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionBucket-request>)))
  "Returns md5sum for a message object of type '<PositionBucket-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionBucket-request)))
  "Returns md5sum for a message object of type 'PositionBucket-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionBucket-request>)))
  "Returns full string definition for message of type '<PositionBucket-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionBucket-request)))
  "Returns full string definition for message of type 'PositionBucket-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionBucket-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionBucket-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionBucket-request
))
;//! \htmlinclude PositionBucket-response.msg.html

(cl:defclass <PositionBucket-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PositionBucket-response (<PositionBucket-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionBucket-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionBucket-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<PositionBucket-response> is deprecated: use p4-srv:PositionBucket-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionBucket-response>) ostream)
  "Serializes a message object of type '<PositionBucket-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionBucket-response>) istream)
  "Deserializes a message object of type '<PositionBucket-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionBucket-response>)))
  "Returns string type for a service object of type '<PositionBucket-response>"
  "p4/PositionBucketResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionBucket-response)))
  "Returns string type for a service object of type 'PositionBucket-response"
  "p4/PositionBucketResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionBucket-response>)))
  "Returns md5sum for a message object of type '<PositionBucket-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionBucket-response)))
  "Returns md5sum for a message object of type 'PositionBucket-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionBucket-response>)))
  "Returns full string definition for message of type '<PositionBucket-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionBucket-response)))
  "Returns full string definition for message of type 'PositionBucket-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionBucket-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionBucket-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionBucket-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionBucket)))
  'PositionBucket-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionBucket)))
  'PositionBucket-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionBucket)))
  "Returns string type for a service object of type '<PositionBucket>"
  "p4/PositionBucket")