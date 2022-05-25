// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: User.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///
/// Corresponds to the details for the user.
struct User {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Unique identy of the user.
  var guid: Int32 = 0

  ///
  /// User's full name.
  var name: String = String()

  ///
  /// User's age.
  var age: Int32 = 0

  ///
  /// User's gender.
  /// Sample values: "iOS", "android".
  var gender: String = String()

  ///
  /// User's phone number.
  var phoneNumber: Int64 = 0

  ///
  /// User's email address.
  var email: String = String()

  ///
  /// User's app details.
  var app: App {
    get {return _app ?? App()}
    set {_app = newValue}
  }
  /// Returns true if `app` has been explicitly set.
  var hasApp: Bool {return self._app != nil}
  /// Clears the value of `app`. Subsequent reads from it will return its default value.
  mutating func clearApp() {self._app = nil}

  ///
  /// User's device details.
  var device: Device {
    get {return _device ?? Device()}
    set {_device = newValue}
  }
  /// Returns true if `device` has been explicitly set.
  var hasDevice: Bool {return self._device != nil}
  /// Clears the value of `device`. Subsequent reads from it will return its default value.
  mutating func clearDevice() {self._device = nil}

  ///
  /// Timestamp for the event.
  var deviceTimestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _deviceTimestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_deviceTimestamp = newValue}
  }
  /// Returns true if `deviceTimestamp` has been explicitly set.
  var hasDeviceTimestamp: Bool {return self._deviceTimestamp != nil}
  /// Clears the value of `deviceTimestamp`. Subsequent reads from it will return its default value.
  mutating func clearDeviceTimestamp() {self._deviceTimestamp = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _app: App? = nil
  fileprivate var _device: Device? = nil
  fileprivate var _deviceTimestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension User: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "User"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "guid"),
    2: .same(proto: "name"),
    3: .same(proto: "age"),
    4: .same(proto: "gender"),
    5: .standard(proto: "phone_number"),
    6: .same(proto: "email"),
    7: .same(proto: "app"),
    8: .same(proto: "device"),
    9: .standard(proto: "device_timestamp"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.guid)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularInt32Field(value: &self.age)
      case 4: try decoder.decodeSingularStringField(value: &self.gender)
      case 5: try decoder.decodeSingularInt64Field(value: &self.phoneNumber)
      case 6: try decoder.decodeSingularStringField(value: &self.email)
      case 7: try decoder.decodeSingularMessageField(value: &self._app)
      case 8: try decoder.decodeSingularMessageField(value: &self._device)
      case 9: try decoder.decodeSingularMessageField(value: &self._deviceTimestamp)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guid != 0 {
      try visitor.visitSingularInt32Field(value: self.guid, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.age != 0 {
      try visitor.visitSingularInt32Field(value: self.age, fieldNumber: 3)
    }
    if !self.gender.isEmpty {
      try visitor.visitSingularStringField(value: self.gender, fieldNumber: 4)
    }
    if self.phoneNumber != 0 {
      try visitor.visitSingularInt64Field(value: self.phoneNumber, fieldNumber: 5)
    }
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 6)
    }
    if let v = self._app {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if let v = self._device {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if let v = self._deviceTimestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: User, rhs: User) -> Bool {
    if lhs.guid != rhs.guid {return false}
    if lhs.name != rhs.name {return false}
    if lhs.age != rhs.age {return false}
    if lhs.gender != rhs.gender {return false}
    if lhs.phoneNumber != rhs.phoneNumber {return false}
    if lhs.email != rhs.email {return false}
    if lhs._app != rhs._app {return false}
    if lhs._device != rhs._device {return false}
    if lhs._deviceTimestamp != rhs._deviceTimestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}