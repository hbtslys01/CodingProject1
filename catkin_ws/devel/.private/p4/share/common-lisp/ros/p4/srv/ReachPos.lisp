; Auto-generated. Do not edit!


(cl:in-package p4-srv)


;//! \htmlinclude ReachPos-request.msg.html

(cl:defclass <ReachPos-request> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ReachPos-request (<ReachPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReachPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReachPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<ReachPos-request> is deprecated: use p4-srv:ReachPos-request instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <ReachPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:pos-val is deprecated.  Use p4-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReachPos-request>) ostream)
  "Serializes a message object of type '<ReachPos-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReachPos-request>) istream)
  "Deserializes a message object of type '<ReachPos-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReachPos-request>)))
  "Returns string type for a service object of type '<ReachPos-request>"
  "p4/ReachPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachPos-request)))
  "Returns string type for a service object of type 'ReachPos-request"
  "p4/ReachPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReachPos-request>)))
  "Returns md5sum for a message object of type '<ReachPos-request>"
  "f6223c7abdc4b623d217c01366131467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReachPos-request)))
  "Returns md5sum for a message object of type 'ReachPos-request"
  "f6223c7abdc4b623d217c01366131467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReachPos-request>)))
  "Returns full string definition for message of type '<ReachPos-request>"
  (cl:format cl:nil "geometry_msgs/Point pos~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReachPos-request)))
  "Returns full string definition for message of type 'ReachPos-request"
  (cl:format cl:nil "geometry_msgs/Point pos~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReachPos-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReachPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReachPos-request
    (cl:cons ':pos (pos msg))
))
;//! \htmlinclude ReachPos-response.msg.html

(cl:defclass <ReachPos-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReachPos-response (<ReachPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReachPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReachPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<ReachPos-response> is deprecated: use p4-srv:ReachPos-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReachPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:success-val is deprecated.  Use p4-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReachPos-response>) ostream)
  "Serializes a message object of type '<ReachPos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReachPos-response>) istream)
  "Deserializes a message object of type '<ReachPos-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReachPos-response>)))
  "Returns string type for a service object of type '<ReachPos-response>"
  "p4/ReachPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachPos-response)))
  "Returns string type for a service object of type 'ReachPos-response"
  "p4/ReachPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReachPos-response>)))
  "Returns md5sum for a message object of type '<ReachPos-response>"
  "f6223c7abdc4b623d217c01366131467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReachPos-response)))
  "Returns md5sum for a message object of type 'ReachPos-response"
  "f6223c7abdc4b623d217c01366131467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReachPos-response>)))
  "Returns full string definition for message of type '<ReachPos-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReachPos-response)))
  "Returns full string definition for message of type 'ReachPos-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReachPos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReachPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReachPos-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReachPos)))
  'ReachPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReachPos)))
  'ReachPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachPos)))
  "Returns string type for a service object of type '<ReachPos>"
  "p4/ReachPos")