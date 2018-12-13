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

let Action = require('../msg/Action.js');

//-----------------------------------------------------------

class ChooseActionRequest {
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
    // Serializes a message object of type ChooseActionRequest
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChooseActionRequest
    let len;
    let data = new ChooseActionRequest(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/ChooseActionRequest';
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
    const resolved = new ChooseActionRequest(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    return resolved;
    }
};

class ChooseActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.next_action = null;
    }
    else {
      if (initObj.hasOwnProperty('next_action')) {
        this.next_action = initObj.next_action
      }
      else {
        this.next_action = new Action();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChooseActionResponse
    // Serialize message field [next_action]
    bufferOffset = Action.serialize(obj.next_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChooseActionResponse
    let len;
    let data = new ChooseActionResponse(null);
    // Deserialize message field [next_action]
    data.next_action = Action.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/ChooseActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b83a3eea961ed406600286364eb49563';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Action next_action
    
    
    ================================================================================
    MSG: p5/Action
    int8 STOP = -1
    int8 SENSE = 0
    int8 MOVE1 = 1
    int8 MOVE2 = 2
    int8 MOVE3 = 3
    int8 MOVE4 = 4
    int8 MOVE5 = 5
    
    int8 name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChooseActionResponse(null);
    if (msg.next_action !== undefined) {
      resolved.next_action = Action.Resolve(msg.next_action)
    }
    else {
      resolved.next_action = new Action()
    }

    return resolved;
    }
};

module.exports = {
  Request: ChooseActionRequest,
  Response: ChooseActionResponse,
  md5sum() { return '0b388a89a907fef764c8117a010b7015'; },
  datatype() { return 'p5/ChooseAction'; }
};
