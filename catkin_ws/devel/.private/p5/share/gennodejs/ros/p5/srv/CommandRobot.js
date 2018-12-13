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
let Action = require('../msg/Action.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandRobotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new State();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new Action();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandRobotRequest
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = Action.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandRobotRequest
    let len;
    let data = new CommandRobotRequest(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = Action.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/CommandRobotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e389a3de6f2b8baf5e2e65f0d3ed16a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State state
    Action action
    
    ================================================================================
    MSG: p5/State
    int8 location
    float64[5] distribution
    
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
    const resolved = new CommandRobotRequest(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    if (msg.action !== undefined) {
      resolved.action = Action.Resolve(msg.action)
    }
    else {
      resolved.action = new Action()
    }

    return resolved;
    }
};

class CommandRobotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.next_state = null;
    }
    else {
      if (initObj.hasOwnProperty('next_state')) {
        this.next_state = initObj.next_state
      }
      else {
        this.next_state = new State();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandRobotResponse
    // Serialize message field [next_state]
    bufferOffset = State.serialize(obj.next_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandRobotResponse
    let len;
    let data = new CommandRobotResponse(null);
    // Deserialize message field [next_state]
    data.next_state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/CommandRobotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3a5ead86a2476c26428873b534e0e92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    State next_state
    
    
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
    const resolved = new CommandRobotResponse(null);
    if (msg.next_state !== undefined) {
      resolved.next_state = State.Resolve(msg.next_state)
    }
    else {
      resolved.next_state = new State()
    }

    return resolved;
    }
};

module.exports = {
  Request: CommandRobotRequest,
  Response: CommandRobotResponse,
  md5sum() { return '744a27ef9dbc5d25c1c0c348dc1c1401'; },
  datatype() { return 'p5/CommandRobot'; }
};
