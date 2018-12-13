; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude FollowPath-request.msg.html

(cl:defclass <FollowPath-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass FollowPath-request (<FollowPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<FollowPath-request> is deprecated: use p5-srv:FollowPath-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <FollowPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:path-val is deprecated.  Use p5-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPath-request>) ostream)
  "Serializes a message object of type '<FollowPath-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPath-request>) istream)
  "Deserializes a message object of type '<FollowPath-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPath-request>)))
  "Returns string type for a service object of type '<FollowPath-request>"
  "p5/FollowPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath-request)))
  "Returns string type for a service object of type 'FollowPath-request"
  "p5/FollowPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPath-request>)))
  "Returns md5sum for a message object of type '<FollowPath-request>"
  "b58b29f4d3d5430fc9d5efc2f5262786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPath-request)))
  "Returns md5sum for a message object of type 'FollowPath-request"
  "b58b29f4d3d5430fc9d5efc2f5262786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPath-request>)))
  "Returns full string definition for message of type '<FollowPath-request>"
  (cl:format cl:nil "geometry_msgs/Point[] path~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPath-request)))
  "Returns full string definition for message of type 'FollowPath-request"
  (cl:format cl:nil "geometry_msgs/Point[] path~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPath-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPath-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude FollowPath-response.msg.html

(cl:defclass <FollowPath-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FollowPath-response (<FollowPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<FollowPath-response> is deprecated: use p5-srv:FollowPath-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPath-response>) ostream)
  "Serializes a message object of type '<FollowPath-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPath-response>) istream)
  "Deserializes a message object of type '<FollowPath-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPath-response>)))
  "Returns string type for a service object of type '<FollowPath-response>"
  "p5/FollowPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath-response)))
  "Returns string type for a service object of type 'FollowPath-response"
  "p5/FollowPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPath-response>)))
  "Returns md5sum for a message object of type '<FollowPath-response>"
  "b58b29f4d3d5430fc9d5efc2f5262786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPath-response)))
  "Returns md5sum for a message object of type 'FollowPath-response"
  "b58b29f4d3d5430fc9d5efc2f5262786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPath-response>)))
  "Returns full string definition for message of type '<FollowPath-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPath-response)))
  "Returns full string definition for message of type 'FollowPath-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPath-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPath-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FollowPath)))
  'FollowPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FollowPath)))
  'FollowPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath)))
  "Returns string type for a service object of type '<FollowPath>"
  "p5/FollowPath")