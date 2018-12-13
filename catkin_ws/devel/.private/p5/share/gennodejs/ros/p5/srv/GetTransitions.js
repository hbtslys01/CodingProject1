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

let ActionOption = require('../msg/ActionOption.js');

//-----------------------------------------------------------

class GetTransitionsRequest {
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
    // Serializes a message object of type GetTransitionsRequest
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransitionsRequest
    let len;
    let data = new GetTransitionsRequest(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/GetTransitionsRequest';
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
    const resolved = new GetTransitionsRequest(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    return resolved;
    }
};

class GetTransitionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransitionsResponse
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = ActionOption.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransitionsResponse
    let len;
    let data = new GetTransitionsResponse(null);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = ActionOption.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.actions.forEach((val) => {
      length += ActionOption.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/GetTransitionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6675e6895de9e0b5515afd521b48ed56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ActionOption[] actions
    
    
    ================================================================================
    MSG: p5/ActionOption
    Action action		# The action can cause any one of the effects
    ActionEffect[] effects
    
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
    
    ================================================================================
    MSG: p5/ActionEffect
    State next_state	# the state this action is transitioning to
    float64 probability	# the probability of that transition occurring in this state
    float64 reward		# the reward resulting from this transition
    
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
    const resolved = new GetTransitionsResponse(null);
    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = ActionOption.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTransitionsRequest,
  Response: GetTransitionsResponse,
  md5sum() { return '1fab3630f0a783dcf6c5e57c78db46b6'; },
  datatype() { return 'p5/GetTransitions'; }
};
