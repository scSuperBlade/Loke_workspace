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

class ChassisModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_mode')) {
        this.chassis_mode = initObj.chassis_mode
      }
      else {
        this.chassis_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisModeRequest
    // Serialize message field [chassis_mode]
    bufferOffset = _serializer.uint8(obj.chassis_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisModeRequest
    let len;
    let data = new ChassisModeRequest(null);
    // Deserialize message field [chassis_mode]
    data.chassis_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/ChassisModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebca5d18286f81c9895c743817e1cddb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 chassis_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisModeRequest(null);
    if (msg.chassis_mode !== undefined) {
      resolved.chassis_mode = msg.chassis_mode;
    }
    else {
      resolved.chassis_mode = 0
    }

    return resolved;
    }
};

class ChassisModeResponse {
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
    // Serializes a message object of type ChassisModeResponse
    // Serialize message field [received]
    bufferOffset = _serializer.bool(obj.received, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisModeResponse
    let len;
    let data = new ChassisModeResponse(null);
    // Deserialize message field [received]
    data.received = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/ChassisModeResponse';
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
    const resolved = new ChassisModeResponse(null);
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
  Request: ChassisModeRequest,
  Response: ChassisModeResponse,
  md5sum() { return '40a1e51b6bb5a70a607d07454b9fd407'; },
  datatype() { return 'messages/ChassisMode'; }
};
