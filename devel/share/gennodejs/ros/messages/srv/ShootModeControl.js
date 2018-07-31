// Auto-generated. Do not edit!

// (in-package messages.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ShootModeControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.c_shoot_cmd = null;
      this.fric_wheel_run = null;
    }
    else {
      if (initObj.hasOwnProperty('c_shoot_cmd')) {
        this.c_shoot_cmd = initObj.c_shoot_cmd
      }
      else {
        this.c_shoot_cmd = false;
      }
      if (initObj.hasOwnProperty('fric_wheel_run')) {
        this.fric_wheel_run = initObj.fric_wheel_run
      }
      else {
        this.fric_wheel_run = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShootModeControlRequest
    // Serialize message field [c_shoot_cmd]
    bufferOffset = _serializer.bool(obj.c_shoot_cmd, buffer, bufferOffset);
    // Serialize message field [fric_wheel_run]
    bufferOffset = _serializer.bool(obj.fric_wheel_run, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShootModeControlRequest
    let len;
    let data = new ShootModeControlRequest(null);
    // Deserialize message field [c_shoot_cmd]
    data.c_shoot_cmd = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fric_wheel_run]
    data.fric_wheel_run = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/ShootModeControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc8c003502b1c70f5165da6830372b60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool c_shoot_cmd
    bool fric_wheel_run
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShootModeControlRequest(null);
    if (msg.c_shoot_cmd !== undefined) {
      resolved.c_shoot_cmd = msg.c_shoot_cmd;
    }
    else {
      resolved.c_shoot_cmd = false
    }

    if (msg.fric_wheel_run !== undefined) {
      resolved.fric_wheel_run = msg.fric_wheel_run;
    }
    else {
      resolved.fric_wheel_run = false
    }

    return resolved;
    }
};

class ShootModeControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.received = null;
    }
    else {
      if (initObj.hasOwnProperty('received')) {
        this.received = initObj.received
      }
      else {
        this.received = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShootModeControlResponse
    // Serialize message field [received]
    bufferOffset = _serializer.bool(obj.received, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShootModeControlResponse
    let len;
    let data = new ShootModeControlResponse(null);
    // Deserialize message field [received]
    data.received = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/ShootModeControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd4152e077925db952c78baadb1e48b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool received
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShootModeControlResponse(null);
    if (msg.received !== undefined) {
      resolved.received = msg.received;
    }
    else {
      resolved.received = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ShootModeControlRequest,
  Response: ShootModeControlResponse,
  md5sum() { return '03450b1a1a21c651312ad46d1cfacf66'; },
  datatype() { return 'messages/ShootModeControl'; }
};
