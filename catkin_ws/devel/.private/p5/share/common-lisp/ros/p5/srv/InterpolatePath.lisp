; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude InterpolatePath-request.msg.html

(cl:defclass <InterpolatePath-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (distance
    :reader distance
    :initarg :distance
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass InterpolatePath-request (<InterpolatePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterpolatePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterpolatePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<InterpolatePath-request> is deprecated: use p5-srv:InterpolatePath-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <InterpolatePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:path-val is deprecated.  Use p5-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <InterpolatePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:distance-val is deprecated.  Use p5-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterpolatePath-request>) ostream)
  "Serializes a message object of type '<InterpolatePath-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterpolatePath-request>) istream)
  "Deserializes a message object of type '<InterpolatePath-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterpolatePath-request>)))
  "Returns string type for a service object of type '<InterpolatePath-request>"
  "p5/InterpolatePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterpolatePath-request)))
  "Returns string type for a service object of type 'InterpolatePath-request"
  "p5/InterpolatePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterpolatePath-request>)))
  "Returns md5sum for a message object of type '<InterpolatePath-request>"
  "8c3e2084abc80e147089171826a07fe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterpolatePath-request)))
  "Returns md5sum for a message object of type 'InterpolatePath-request"
  "8c3e2084abc80e147089171826a07fe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterpolatePath-request>)))
  "Returns full string definition for message of type '<InterpolatePath-request>"
  (cl:format cl:nil "geometry_msgs/Point[] path~%std_msgs/Float32 distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterpolatePath-request)))
  "Returns full string definition for message of type 'InterpolatePath-request"
  (cl:format cl:nil "geometry_msgs/Point[] path~%std_msgs/Float32 distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterpolatePath-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterpolatePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InterpolatePath-request
    (cl:cons ':path (path msg))
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude InterpolatePath-response.msg.html

(cl:defclass <InterpolatePath-response> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass InterpolatePath-response (<InterpolatePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterpolatePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterpolatePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<InterpolatePath-response> is deprecated: use p5-srv:InterpolatePath-response instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <InterpolatePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:point-val is deprecated.  Use p5-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterpolatePath-response>) ostream)
  "Serializes a message object of type '<InterpolatePath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterpolatePath-response>) istream)
  "Deserializes a message object of type '<InterpolatePath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterpolatePath-response>)))
  "Returns string type for a service object of type '<InterpolatePath-response>"
  "p5/InterpolatePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterpolatePath-response)))
  "Returns string type for a service object of type 'InterpolatePath-response"
  "p5/InterpolatePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterpolatePath-response>)))
  "Returns md5sum for a message object of type '<InterpolatePath-response>"
  "8c3e2084abc80e147089171826a07fe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterpolatePath-response)))
  "Returns md5sum for a message object of type 'InterpolatePath-response"
  "8c3e2084abc80e147089171826a07fe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterpolatePath-response>)))
  "Returns full string definition for message of type '<InterpolatePath-response>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterpolatePath-response)))
  "Returns full string definition for message of type 'InterpolatePath-response"
  (cl:format cl:nil "geometry_msgs/Point point~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterpolatePath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterpolatePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InterpolatePath-response
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InterpolatePath)))
  'InterpolatePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InterpolatePath)))
  'InterpolatePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterpolatePath)))
  "Returns string type for a service object of type '<InterpolatePath>"
  "p5/InterpolatePath")