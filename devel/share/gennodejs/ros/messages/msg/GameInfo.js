// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GameInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.remain_time = null;
      this.game_process = null;
      this.remain_hp = null;
      this.max_hp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('remain_time')) {
        this.remain_time = initObj.remain_time
      }
      else {
        this.remain_time = 0;
      }
      if (initObj.hasOwnProperty('game_process')) {
        this.game_process = initObj.game_process
      }
      else {
        this.game_process = 0;
      }
      if (initObj.hasOwnProperty('remain_hp')) {
        this.remain_hp = initObj.remain_hp
      }
      else {
        this.remain_hp = 0;
      }
      if (initObj.hasOwnProperty('max_hp')) {
        this.max_hp = initObj.max_hp
      }
      else {
        this.max_hp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [remain_time]
    bufferOffset = _serializer.int16(obj.remain_time, buffer, bufferOffset);
    // Serialize message field [game_process]
    bufferOffset = _serializer.int16(obj.game_process, buffer, bufferOffset);
    // Serialize message field [remain_hp]
    bufferOffset = _serializer.int16(obj.remain_hp, buffer, bufferOffset);
    // Serialize message field [max_hp]
    bufferOffset = _serializer.int16(obj.max_hp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameInfo
    let len;
    let data = new GameInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [remain_time]
    data.remain_time = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [game_process]
    data.game_process = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [remain_hp]
    data.remain_hp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [max_hp]
    data.max_hp = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/GameInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f22667905a2c8ef96aa7371a952446a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 remain_time
    
    #current race stage
    #  0 not start
    #  1 preparation stage
    #  2 self-check stage
    #  3 5 seconds count down
    #  4 fighting stage
    #  5 result computing stage */
    int16 game_process
    
    int16 remain_hp
    int16 max_hp
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.remain_time !== undefined) {
      resolved.remain_time = msg.remain_time;
    }
    else {
      resolved.remain_time = 0
    }

    if (msg.game_process !== undefined) {
      resolved.game_process = msg.game_process;
    }
    else {
      resolved.game_process = 0
    }

    if (msg.remain_hp !== undefined) {
      resolved.remain_hp = msg.remain_hp;
    }
    else {
      resolved.remain_hp = 0
    }

    if (msg.max_hp !== undefined) {
      resolved.max_hp = msg.max_hp;
    }
    else {
      resolved.max_hp = 0
    }

    return resolved;
    }
};

module.exports = GameInfo;
