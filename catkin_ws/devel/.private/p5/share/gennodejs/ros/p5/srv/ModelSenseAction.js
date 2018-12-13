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

class ModelSenseActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new State();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModelSenseActionRequest
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModelSenseActionRequest
    let len;
    let data = new ModelSenseActionRequest(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/ModelSenseActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf0c3a8c031d9785207b75a4d2774f5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State state
    
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
    const resolved = new ModelSenseActionRequest(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    return resolved;
    }
};

class ModelSenseActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distribution = null;
    }
    else {
      if (initObj.hasOwnProperty('distribution')) {
        this.distribution = initObj.distribution
      }
      else {
        this.distribution = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModelSenseActionResponse
    // Check that the constant length array field [distribution] has the right length
    if (obj.distribution.length !== 5) {
      throw new Error('Unable to serialize array field distribution - length must be 5')
    }
    // Serialize message field [distribution]
    bufferOffset = _arraySerializer.float64(obj.distribution, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModelSenseActionResponse
    let len;
    let data = new ModelSenseActionResponse(null);
    // Deserialize message field [distribution]
    data.distribution = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/ModelSenseActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d0b9b01cbf7a806a1b65f8eedcd1a6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[5] distribution
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModelSenseActionResponse(null);
    if (msg.distribution !== undefined) {
      resolved.distribution = msg.distribution;
    }
    else {
      resolved.distribution = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: ModelSenseActionRequest,
  Response: ModelSenseActionResponse,
  md5sum() { return 'ccc320a8f7fd9b1f63d549e5acbe4ce5'; },
  datatype() { return 'p5/ModelSenseAction'; }
};
