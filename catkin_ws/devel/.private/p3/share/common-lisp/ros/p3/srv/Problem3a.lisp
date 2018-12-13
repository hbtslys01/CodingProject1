; Auto-generated. Do not edit!


(cl:in-package p3-srv)


;//! \htmlinclude Problem3a-request.msg.html

(cl:defclass <Problem3a-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Problem3a-request (<Problem3a-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Problem3a-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Problem3a-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p3-srv:<Problem3a-request> is deprecated: use p3-srv:Problem3a-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Problem3a-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p3-srv:position-val is deprecated.  Use p3-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Problem3a-request>) ostream)
  "Serializes a message object of type '<Problem3a-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Problem3a-request>) istream)
  "Deserializes a message object of type '<Problem3a-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Problem3a-request>)))
  "Returns string type for a service object of type '<Problem3a-request>"
  "p3/Problem3aRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Problem3a-request)))
  "Returns string type for a service object of type 'Problem3a-request"
  "p3/Problem3aRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Problem3a-request>)))
  "Returns md5sum for a message object of type '<Problem3a-request>"
  "39287755337901955a554fcb016050f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Problem3a-request)))
  "Returns md5sum for a message object of type 'Problem3a-request"
  "39287755337901955a554fcb016050f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Problem3a-request>)))
  "Returns full string definition for message of type '<Problem3a-request>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Problem3a-request)))
  "Returns full string definition for message of type 'Problem3a-request"
  (cl:format cl:nil "geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Problem3a-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Problem3a-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Problem3a-request
    (cl:cons ':position (position msg))
))
;//! \htmlinclude Problem3a-response.msg.html

(cl:defclass <Problem3a-response> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type p3-msg:JointAngles
    :initform (cl:make-instance 'p3-msg:JointAngles)))
)

(cl:defclass Problem3a-response (<Problem3a-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Problem3a-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Problem3a-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p3-srv:<Problem3a-response> is deprecated: use p3-srv:Problem3a-response instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <Problem3a-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p3-srv:angles-val is deprecated.  Use p3-srv:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Problem3a-response>) ostream)
  "Serializes a message object of type '<Problem3a-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Problem3a-response>) istream)
  "Deserializes a message object of type '<Problem3a-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Problem3a-response>)))
  "Returns string type for a service object of type '<Problem3a-response>"
  "p3/Problem3aResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Problem3a-response)))
  "Returns string type for a service object of type 'Problem3a-response"
  "p3/Problem3aResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Problem3a-response>)))
  "Returns md5sum for a message object of type '<Problem3a-response>"
  "39287755337901955a554fcb016050f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Problem3a-response)))
  "Returns md5sum for a message object of type 'Problem3a-response"
  "39287755337901955a554fcb016050f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Problem3a-response>)))
  "Returns full string definition for message of type '<Problem3a-response>"
  (cl:format cl:nil "p3/JointAngles angles~%~%~%================================================================================~%MSG: p3/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Problem3a-response)))
  "Returns full string definition for message of type 'Problem3a-response"
  (cl:format cl:nil "p3/JointAngles angles~%~%~%================================================================================~%MSG: p3/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Problem3a-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Problem3a-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Problem3a-response
    (cl:cons ':angles (angles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Problem3a)))
  'Problem3a-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Problem3a)))
  'Problem3a-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Problem3a)))
  "Returns string type for a service object of type '<Problem3a>"
  "p3/Problem3a")