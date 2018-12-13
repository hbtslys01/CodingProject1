// Auto-generated. Do not edit!

// (in-package p5.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let State = require('../msg/State.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LocateBallRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_state = null;
    }
    else {
      if (initObj.hasOwnProperty('start_state')) {
        this.start_state = initObj.start_state
      }
      else {
        this.start_state = new State();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocateBallRequest
    // Serialize message field [start_state]
    bufferOffset = State.serialize(obj.start_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocateBallRequest
    let len;
    let data = new LocateBallRequest(null);
    // Deserialize message field [start_state]
    data.start_state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/LocateBallRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '629c1d93a710999ff1937fed8f767aa3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State start_state
    
    ================================================================================
    MSG: p5/State
    int8 location
    float64[5] distribution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocateBallRequest(null);
    if (msg.start_state !== undefined) {
      resolved.start_state = State.Resolve(msg.start_state)
    }
    else {
      resolved.start_state = new State()
    }

    return resolved;
    }
};

class LocateBallResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_state = null;
    }
    else {
      if (initObj.hasOwnProperty('final_state')) {
        this.final_state = initObj.final_state
      }
      else {
        this.final_state = new State();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocateBallResponse
    // Serialize message field [final_state]
    bufferOffset = State.serialize(obj.final_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocateBallResponse
    let len;
    let data = new LocateBallResponse(null);
    // Deserialize message field [final_state]
    data.final_state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/LocateBallResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '041775e31ef5aa2b81912ce1c9d22268';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State final_state
    
    
    ================================================================================
    MSG: p5/State
    int8 location
    float64[5] distribution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocateBallResponse(null);
    if (msg.final_state !== undefined) {
      resolved.final_state = State.Resolve(msg.final_state)
    }
    else {
      resolved.final_state = new State()
    }

    return resolved;
    }
};

module.exports = {
  Request: LocateBallRequest,
  Response: LocateBallResponse,
  md5sum() { return '65f6ab9ab3fd57fefb3b520f3851d0af'; },
  datatype() { return 'p5/LocateBall'; }
};
