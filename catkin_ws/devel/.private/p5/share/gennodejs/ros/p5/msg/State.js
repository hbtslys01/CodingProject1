// Auto-generated. Do not edit!

// (in-package p5.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.distribution = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = 0;
      }
      if (initObj.hasOwnProperty('distribution')) {
        this.distribution = initObj.distribution
      }
      else {
        this.distribution = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [location]
    bufferOffset = _serializer.int8(obj.location, buffer, bufferOffset);
    // Check that the constant length array field [distribution] has the right length
    if (obj.distribution.length !== 5) {
      throw new Error('Unable to serialize array field distribution - length must be 5')
    }
    // Serialize message field [distribution]
    bufferOffset = _arraySerializer.float64(obj.distribution, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [location]
    data.location = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [distribution]
    data.distribution = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p5/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da5e6c451f1acea84b76d43f796ecca1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 location
    float64[5] distribution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = 0
    }

    if (msg.distribution !== undefined) {
      resolved.distribution = msg.distribution;
    }
    else {
      resolved.distribution = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = State;
