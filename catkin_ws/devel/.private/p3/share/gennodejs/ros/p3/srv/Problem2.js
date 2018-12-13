// Auto-generated. Do not edit!

// (in-package p3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointAngles = require('../msg/JointAngles.js');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Problem2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = new JointAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Problem2Request
    // Serialize message field [angles]
    bufferOffset = JointAngles.serialize(obj.angles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Problem2Request
    let len;
    let data = new Problem2Request(null);
    // Deserialize message field [angles]
    data.angles = JointAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/Problem2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9bdd08346a6a9968cc9c423de3cdfb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    JointAngles angles
    
    ================================================================================
    MSG: p3/JointAngles
    float64[5] angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Problem2Request(null);
    if (msg.angles !== undefined) {
      resolved.angles = JointAngles.Resolve(msg.angles)
    }
    else {
      resolved.angles = new JointAngles()
    }

    return resolved;
    }
};

class Problem2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jac = null;
    }
    else {
      if (initObj.hasOwnProperty('jac')) {
        this.jac = initObj.jac
      }
      else {
        this.jac = new std_msgs.msg.Float64MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Problem2Response
    // Serialize message field [jac]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.jac, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Problem2Response
    let len;
    let data = new Problem2Response(null);
    // Deserialize message field [jac]
    data.jac = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.jac);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/Problem2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c429c34eb4f5e0a5ed9c42c5d74ee94a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64MultiArray jac
    
    
    ================================================================================
    MSG: std_msgs/Float64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float64[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Problem2Response(null);
    if (msg.jac !== undefined) {
      resolved.jac = std_msgs.msg.Float64MultiArray.Resolve(msg.jac)
    }
    else {
      resolved.jac = new std_msgs.msg.Float64MultiArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: Problem2Request,
  Response: Problem2Response,
  md5sum() { return '4aaf0985c732d731cb605701418dce69'; },
  datatype() { return 'p3/Problem2'; }
};
