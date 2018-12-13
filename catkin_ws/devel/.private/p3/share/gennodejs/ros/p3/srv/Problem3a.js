// Auto-generated. Do not edit!

// (in-package p3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let JointAngles = require('../msg/JointAngles.js');

//-----------------------------------------------------------

class Problem3aRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Problem3aRequest
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Problem3aRequest
    let len;
    let data = new Problem3aRequest(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/Problem3aRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7bb0ef028c744b081acdc57743b11d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point position
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Problem3aRequest(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class Problem3aResponse {
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
    // Serializes a message object of type Problem3aResponse
    // Serialize message field [angles]
    bufferOffset = JointAngles.serialize(obj.angles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Problem3aResponse
    let len;
    let data = new Problem3aResponse(null);
    // Deserialize message field [angles]
    data.angles = JointAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/Problem3aResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9bdd08346a6a9968cc9c423de3cdfb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    p3/JointAngles angles
    
    
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
    const resolved = new Problem3aResponse(null);
    if (msg.angles !== undefined) {
      resolved.angles = JointAngles.Resolve(msg.angles)
    }
    else {
      resolved.angles = new JointAngles()
    }

    return resolved;
    }
};

module.exports = {
  Request: Problem3aRequest,
  Response: Problem3aResponse,
  md5sum() { return '39287755337901955a554fcb016050f9'; },
  datatype() { return 'p3/Problem3a'; }
};
