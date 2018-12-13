; Auto-generated. Do not edit!


(cl:in-package p4-srv)


;//! \htmlinclude ComputeCost-request.msg.html

(cl:defclass <ComputeCost-request> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass ComputeCost-request (<ComputeCost-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeCost-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeCost-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<ComputeCost-request> is deprecated: use p4-srv:ComputeCost-request instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <ComputeCost-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:waypoints-val is deprecated.  Use p4-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeCost-request>) ostream)
  "Serializes a message object of type '<ComputeCost-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeCost-request>) istream)
  "Deserializes a message object of type '<ComputeCost-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeCost-request>)))
  "Returns string type for a service object of type '<ComputeCost-request>"
  "p4/ComputeCostRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeCost-request)))
  "Returns string type for a service object of type 'ComputeCost-request"
  "p4/ComputeCostRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeCost-request>)))
  "Returns md5sum for a message object of type '<ComputeCost-request>"
  "e8778a61652581d27a3ff06e39854dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeCost-request)))
  "Returns md5sum for a message object of type 'ComputeCost-request"
  "e8778a61652581d27a3ff06e39854dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeCost-request>)))
  "Returns full string definition for message of type '<ComputeCost-request>"
  (cl:format cl:nil "geometry_msgs/Point[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeCost-request)))
  "Returns full string definition for message of type 'ComputeCost-request"
  (cl:format cl:nil "geometry_msgs/Point[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeCost-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeCost-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeCost-request
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude ComputeCost-response.msg.html

(cl:defclass <ComputeCost-response> (roslisp-msg-protocol:ros-message)
  ((cost
    :reader cost
    :initarg :cost
    :type cl:float
    :initform 0.0))
)

(cl:defclass ComputeCost-response (<ComputeCost-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeCost-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeCost-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<ComputeCost-response> is deprecated: use p4-srv:ComputeCost-response instead.")))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <ComputeCost-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:cost-val is deprecated.  Use p4-srv:cost instead.")
  (cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeCost-response>) ostream)
  "Serializes a message object of type '<ComputeCost-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeCost-response>) istream)
  "Deserializes a message object of type '<ComputeCost-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeCost-response>)))
  "Returns string type for a service object of type '<ComputeCost-response>"
  "p4/ComputeCostResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeCost-response)))
  "Returns string type for a service object of type 'ComputeCost-response"
  "p4/ComputeCostResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeCost-response>)))
  "Returns md5sum for a message object of type '<ComputeCost-response>"
  "e8778a61652581d27a3ff06e39854dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeCost-response)))
  "Returns md5sum for a message object of type 'ComputeCost-response"
  "e8778a61652581d27a3ff06e39854dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeCost-response>)))
  "Returns full string definition for message of type '<ComputeCost-response>"
  (cl:format cl:nil "float64 cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeCost-response)))
  "Returns full string definition for message of type 'ComputeCost-response"
  (cl:format cl:nil "float64 cost~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeCost-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeCost-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeCost-response
    (cl:cons ':cost (cost msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeCost)))
  'ComputeCost-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeCost)))
  'ComputeCost-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeCost)))
  "Returns string type for a service object of type '<ComputeCost>"
  "p4/ComputeCost")