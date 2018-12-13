; Auto-generated. Do not edit!


(cl:in-package p3-srv)


;//! \htmlinclude Problem1-request.msg.html

(cl:defclass <Problem1-request> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type p3-msg:JointAngles
    :initform (cl:make-instance 'p3-msg:JointAngles)))
)

(cl:defclass Problem1-request (<Problem1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Problem1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Problem1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p3-srv:<Problem1-request> is deprecated: use p3-srv:Problem1-request instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <Problem1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p3-srv:angles-val is deprecated.  Use p3-srv:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Problem1-request>) ostream)
  "Serializes a message object of type '<Problem1-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Problem1-request>) istream)
  "Deserializes a message object of type '<Problem1-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Problem1-request>)))
  "Returns string type for a service object of type '<Problem1-request>"
  "p3/Problem1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Problem1-request)))
  "Returns string type for a service object of type 'Problem1-request"
  "p3/Problem1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Problem1-request>)))
  "Returns md5sum for a message object of type '<Problem1-request>"
  "0f43d6b0b523860f6489ab1d8e5a3c26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Problem1-request)))
  "Returns md5sum for a message object of type 'Problem1-request"
  "0f43d6b0b523860f6489ab1d8e5a3c26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Problem1-request>)))
  "Returns full string definition for message of type '<Problem1-request>"
  (cl:format cl:nil "JointAngles angles~%~%================================================================================~%MSG: p3/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Problem1-request)))
  "Returns full string definition for message of type 'Problem1-request"
  (cl:format cl:nil "JointAngles angles~%~%================================================================================~%MSG: p3/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Problem1-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Problem1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Problem1-request
    (cl:cons ':angles (angles msg))
))
;//! \htmlinclude Problem1-response.msg.html

(cl:defclass <Problem1-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type p3-msg:PointArray
    :initform (cl:make-instance 'p3-msg:PointArray)))
)

(cl:defclass Problem1-response (<Problem1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Problem1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Problem1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p3-srv:<Problem1-response> is deprecated: use p3-srv:Problem1-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Problem1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p3-srv:points-val is deprecated.  Use p3-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Problem1-response>) ostream)
  "Serializes a message object of type '<Problem1-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Problem1-response>) istream)
  "Deserializes a message object of type '<Problem1-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Problem1-response>)))
  "Returns string type for a service object of type '<Problem1-response>"
  "p3/Problem1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Problem1-response)))
  "Returns string type for a service object of type 'Problem1-response"
  "p3/Problem1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Problem1-response>)))
  "Returns md5sum for a message object of type '<Problem1-response>"
  "0f43d6b0b523860f6489ab1d8e5a3c26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Problem1-response)))
  "Returns md5sum for a message object of type 'Problem1-response"
  "0f43d6b0b523860f6489ab1d8e5a3c26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Problem1-response>)))
  "Returns full string definition for message of type '<Problem1-response>"
  (cl:format cl:nil "PointArray points~%~%~%================================================================================~%MSG: p3/PointArray~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Problem1-response)))
  "Returns full string definition for message of type 'Problem1-response"
  (cl:format cl:nil "PointArray points~%~%~%================================================================================~%MSG: p3/PointArray~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Problem1-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Problem1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Problem1-response
    (cl:cons ':points (points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Problem1)))
  'Problem1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Problem1)))
  'Problem1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Problem1)))
  "Returns string type for a service object of type '<Problem1>"
  "p3/Problem1")