; Auto-generated. Do not edit!


(cl:in-package p4-srv)


;//! \htmlinclude GetPosition-request.msg.html

(cl:defclass <GetPosition-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPosition-request (<GetPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<GetPosition-request> is deprecated: use p4-srv:GetPosition-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPosition-request>) ostream)
  "Serializes a message object of type '<GetPosition-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPosition-request>) istream)
  "Deserializes a message object of type '<GetPosition-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPosition-request>)))
  "Returns string type for a service object of type '<GetPosition-request>"
  "p4/GetPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosition-request)))
  "Returns string type for a service object of type 'GetPosition-request"
  "p4/GetPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPosition-request>)))
  "Returns md5sum for a message object of type '<GetPosition-request>"
  "3860763bcb57a7205cf0008cf4d52a71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPosition-request)))
  "Returns md5sum for a message object of type 'GetPosition-request"
  "3860763bcb57a7205cf0008cf4d52a71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPosition-request>)))
  "Returns full string definition for message of type '<GetPosition-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPosition-request)))
  "Returns full string definition for message of type 'GetPosition-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPosition-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPosition-request
))
;//! \htmlinclude GetPosition-response.msg.html

(cl:defclass <GetPosition-response> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass GetPosition-response (<GetPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<GetPosition-response> is deprecated: use p4-srv:GetPosition-response instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <GetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:pos-val is deprecated.  Use p4-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <GetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:orientation-val is deprecated.  Use p4-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPosition-response>) ostream)
  "Serializes a message object of type '<GetPosition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPosition-response>) istream)
  "Deserializes a message object of type '<GetPosition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPosition-response>)))
  "Returns string type for a service object of type '<GetPosition-response>"
  "p4/GetPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosition-response)))
  "Returns string type for a service object of type 'GetPosition-response"
  "p4/GetPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPosition-response>)))
  "Returns md5sum for a message object of type '<GetPosition-response>"
  "3860763bcb57a7205cf0008cf4d52a71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPosition-response)))
  "Returns md5sum for a message object of type 'GetPosition-response"
  "3860763bcb57a7205cf0008cf4d52a71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPosition-response>)))
  "Returns full string definition for message of type '<GetPosition-response>"
  (cl:format cl:nil "geometry_msgs/Point pos~%geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPosition-response)))
  "Returns full string definition for message of type 'GetPosition-response"
  (cl:format cl:nil "geometry_msgs/Point pos~%geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPosition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPosition-response
    (cl:cons ':pos (pos msg))
    (cl:cons ':orientation (orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPosition)))
  'GetPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPosition)))
  'GetPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosition)))
  "Returns string type for a service object of type '<GetPosition>"
  "p4/GetPosition")