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

class CheckStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.self_check_passed = null;
    }
    else {
      if (initObj.hasOwnProperty('self_check_passed')) {
        this.self_check_passed = initObj.self_check_passed
      }
      else {
        this.self_check_passed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckStatusRequest
    // Serialize message field [self_check_passed]
    bufferOffset = _serializer.bool(obj.self_check_passed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckStatusRequest
    let len;
    let data = new CheckStatusRequest(null);
    // Deserialize message field [self_check_passed]
    data.self_check_passed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/CheckStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b302e58e815383eb0fa5c719a0e47f1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool self_check_passed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckStatusRequest(null);
    if (msg.self_check_passed !== undefined) {
      resolved.self_check_passed = msg.self_check_passed;
    }
    else {
      resolved.self_check_passed = false
    }

    return resolved;
    }
};

class CheckStatusResponse {
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
    // Serializes a message object of type CheckStatusResponse
    // Serialize message field [received]
    bufferOffset = _serializer.bool(obj.received, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckStatusResponse
    let len;
    let data = new CheckStatusResponse(null);
    // Deserialize message field [received]
    data.received = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/CheckStatusResponse';
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
    const resolved = new CheckStatusResponse(null);
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
  Request: CheckStatusRequest,
  Response: CheckStatusResponse,
  md5sum() { return '66285132674ea3f07185519c874191fe'; },
  datatype() { return 'messages/CheckStatus'; }
};
