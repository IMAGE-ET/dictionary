// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// See the AUTHORS file for other contributors.

import 'dart:typed_data';

import 'package:common/common.dart';

import 'float.dart';
import 'integer.dart';
import 'string.dart';

//TODO: Explain VR class structure

/// The maximum value of an unsigned 16-bit integer (2^32).
const int kUint16Max = 0xFFFF;

/// The maximum value of an unsigned 32-bit integer (2^32).
const int kUint32Max = 0xFFFFFFFF;

/// The maximum length, in bytes, of a "short" (16-bit) Value Field.
const int kMaxShortVF = kUint16Max;

/// The maximum length, in bytes, of a "long" (32-bit) Value Field.
///
/// Note: the values is `[kUint32Max] - 1` because the maximum value
/// (0xFFFFFFFF) is used to denote a Value Field with Undefined Length.
const int kMaxLongVF = kUint32Max - 2;

class VR<T> {
  static const int kMaxShortVFLength = kMaxShortVF;
  static const int kMaxLongVFLength = kMaxLongVF;
  final int index;
  final int code;
  final String id;
  final int elementSize;
  final int vfLengthSize;
  final int maxVFLength;
  final String keyword;

  const VR(this.index, this.code, this.id, this.elementSize, this.vfLengthSize,
      this.maxVFLength, this.keyword);

  const VR._(this.index, this.code, this.id, this.elementSize,
      this.vfLengthSize, this.maxVFLength, this.keyword);

  VR operator [](int i) => vrList[i];

  int get minValueLength => null;
  int get maxValueLength => null;

  bool get undefinedAllowed => false;

  bool get hasShortVF => vfLengthSize == 2;
  bool get hasLongVF => !hasShortVF;

  String get info =>
      '$runtimeType: $id(${Int16.hex(code)})[$index]: maxVFLength($maxVFLength), '
      'elementSize($elementSize)';

  String get asString => 'VR.k$id';

  /// Returns the length in number of elements.
  int toLength(int lengthInBytes) => lengthInBytes ~/ elementSize;

  // **** Must be overridden.
  /// Returns [true] of [value] is valid for this [VRBase].
  bool isValid(T value) => false;

  /// Returns [true] of [value] is not valid for this [VRBase].
  bool isNotValid(T value) => !isValid(value);

  T check(T value) => (isValid(value)) ? value : null;

  // **** Must be overridden.
  /// Returns a valid value, or if not parsable, [null].
  dynamic parse(String s) => null;

  // **** Must be overridden.
  /// Returns a valid value, or if not parsable, [null].
  List<T> convert(Uint8List list) => null;

  /// Returns a valid value, or if not parsable, [null].
  List<T> view(Uint8List list) => null;

  // **** Must be overridden.
  /// Returns a [String] indicating the issue with value. If there are no
  /// issues returns the empty string ("").
  String issue(T value) => null;

  // **** Must be overridden.
  /// Returns a new value that is legal and a best practice.
  T fix(T value) => null;

  // **** Must be overridden.
  /// Returns [true] if [bytes] contains a valid Value Field.
  //TODO: implement or flush
  Uint8List isValidBytes(Uint8List bytes) => null;

  @override
  String toString() => asString;

  // **** Constant members

  //index, code, id, elementSize, vfLengthSize, maxVFLength, keyword
  static const VR kInvalid = const VR._(0, 0, "IV", 0, 0, -1, "Invalid");
  static const VR kBR = const VR._(4, 0x5242, "BR", 0, 0, -1, "BDRef");

  // Sequence
  static const VR kSQ = VRSequence.kSQ;

  // Integers
  static const VR kSS = VRInt.kSS;
  static const VR kSL = VRInt.kSL;
  static const VR kOB = VRInt.kOB;
  static const VR kUN = VRInt.kUN;
  static const VR kOW = VRInt.kOW;
  static const VR kUS = VRInt.kUS;
  static const VR kUL = VRInt.kUL;
  static const VR kOL = VRInt.kOL;
  static const VR kAT = VRInt.kAT;

  // Floats
  static const VR kFD = VRFloat.kFD;
  static const VR kFL = VRFloat.kFL;
  static const VR kOD = VRFloat.kOD;
  static const VR kOF = VRFloat.kOF;

  // String.numbers
  static const VR kIS = VRIntString.kIS;
  static const VR kDS = VRFloatString.kDS;

  // String.dcm
  static const VR kAE = VRDcmString.kAE;
  static const VR kLO = VRDcmString.kLO;
  static const VR kSH = VRDcmString.kSH;

  // Code String
  static const VR kCS = VRCodeString.kCS;

  // String.Text
  static const VR kST = VRDcmText.kST;
  static const VR kLT = VRDcmText.kLT;

  // String.DateTime
  static const VR kDA = VRDcmDate.kDA;
  static const VR kDT = VRDcmDateTime.kDT;
  static const VR kTM = VRDcmTime.kTM;

  // String.Other
  static const VR kPN = VRPersonName.kPN;
  static const VR kUI = VRUid.kUI;
  static const VR kAS = VRDcmAge.kAS;

  // String with long Value Field
  static const VR kUC = VRDcmString.kUC;
  static const VR kUR = VRUri.kUR;
  static const VR kUT = VRDcmText.kUT;

  // Placeholder for Bulkdata Reference
  // static const VR kBR = VROther.kBR;

  // Special values used by Tag
  static const VR kOBOW = VRIntSpecial.kOBOW;
  static const VR kUSSS = VRIntSpecial.kUSSS;
  static const VR kUSSSOW = VRIntSpecial.kUSSSOW;
  static const VR kUSOW = VRIntSpecial.kUSOW;
  static const VR kUSOW1 = VRIntSpecial.kUSOW1;

  static const List<VR> vrList = const <VR>[
    kInvalid,
    kAE, kAS, kAT, kBR, kCS,
    kDA, kDS, kDT, kFD, kFL,
    kIS, kLO, kLT, kOB, kOD,
    kOF, kOL, kOW, kPN, kSH,
    kSL, kSQ, kSS, kST, kTM,
    kUC, kUI, kUL, kUN, kUR,
    kUS, kUT // stop reformat
  ];
  static const Map<int, VR> vrMap = const <int, VR>{
    0x0000: kInvalid,
    0x4541: kAE, 0x5341: kAS, 0x5441: kAT, 0x5242: kBR, 0x5343: kCS,
    0x4144: kDA, 0x5344: kDS, 0x5444: kDT, 0x4446: kFD, 0x4c46: kFL,
    0x5349: kIS, 0x4f4c: kLO, 0x544c: kLT, 0x424f: kOB, 0x444f: kOD,
    0x464f: kOF, 0x4c4f: kOL, 0x574f: kOW, 0x4e50: kPN, 0x4853: kSH,
    0x4c53: kSL, 0x5153: kSQ, 0x5353: kSS, 0x5453: kST, 0x4d54: kTM,
    0x4355: kUC, 0x4955: kUI, 0x4c55: kUL, 0x4e55: kUN, 0x5255: kUR,
    0x5355: kUS, 0x5455: kUT // stop reformat
  };

  static VR lookup(int vrCode) => vrMap[vrCode];
}

//TODO: Add this field to VR Definition
const Map<VR, String> dataTypes = const <VR, String>{
  // String VRBs
  VR.kAE: "AE Title",
  VR.kAS: "String",
  //  VRB.kBR:
  VR.kCS: "Code String",
  VR.kDA: "Date",
  VR.kDS: "Decimal String",
  VR.kDT: "DateTime",
  VR.kIS: "Integer String",
  VR.kLO: "String",
  VR.kLT: "Text",
  VR.kPN: "String",
  VR.kSH: "String",
  VR.kST: "Text",
  VR.kTM: "Time",
  VR.kUC: "String",
  VR.kUI: "UID",
  VR.kUR: "URI",
  VR.kUT: "Text",

  // Integers
  VR.kAT: "uint32",
  VR.kOB: "uint8",
  VR.kOW: "uint16",
  VR.kSL: "int32",
  VR.kSS: "int16",
  VR.kUL: "uint32",
  VR.kUS: "uint16",

  //Floats
  VR.kFD: "float64",
  VR.kFL: "float32",
  VR.kOD: "float64",
  VR.kOF: "float32"
};

//TODO: clean this up. remove VR.kUnknown and VR.kBR. How to handle SQ
class VRSequence extends VR {
  final bool undefinedLengthAllowed = true;

  const VRSequence._(int index, int code, String id, int elementSize,
      int vfLengthSize, int maxVFLength, String keyword)
      : super._(index, code, id, 1, 4, kMaxLongVF, keyword);

  //Bulkdata Reference
  static const VR kSQ = const VR._(22, 0x5153, "SQ", 0, 0, -1, "Sequence");
}