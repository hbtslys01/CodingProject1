// Auto-generated. Do not edit!

// (in-package p5.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let State = require('./State.js');

//-----------------------------------------------------------

class ActionEffect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.next_state = null;
      this.probability = null;
      this.reward = null;
    }
    else {
      if (initObj.hasOwnProperty('next_state')) {
        this.next_state = initObj.next_state
      }
      else {
        this.next_state = new State();
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionEffect
    // Serialize message field [next_state]
    bufferOffset = State.serialize(obj.next_state, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionEffect
    let len;
    let data = new ActionEffect(null);
    // Deserialize message field [next_state]
    data.next_state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p5/ActionEffect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '389fa51769ae72e234321be7110c4f63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ActionEffect(null);
    if (msg.next_state !== undefined) {
      resolved.next_state = State.Resolve(msg.next_state)
    }
    else {
      resolved.next_state = new State()
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    return resolved;
    }
};

module.exports = ActionEffect;
