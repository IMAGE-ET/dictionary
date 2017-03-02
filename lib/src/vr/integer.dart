// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:typed_data';

import 'package:common/integer.dart';

import 'vr.dart';

// Maximum Value Field length for different [VRInt]s.

// Note: since Value Field Length must be an even number OB, OW, and UN
//       subtract two from kMaxUint32

const int kMaxOB = kUint32Max - 2;
const int kMaxOL = kUint32Max - 4;
const int kMaxOW = kUint32Max - 2;
const int kMaxUN = kUint32Max - 2;

/// Converts [bytes] into a valid [TypedData<List<int>>] and returns it.
/// If [bytes] is [null] or empty (`bytes.length == 0`), returns an
/// empty [List<int>]. If the list cannot be converted returns null.
typedef List<int> BytesToValues(Uint8List bytes,
    [int offset, int length, bool toView]);

/// Verifies [bytes] into a valid [TypedData<List<int>>], and
/// if it is aligned (on a valid byte boundary) returns a View of
/// [bytes]; otherwise, copies [bytes] into a new [TypedData<List<int>>].
/// If [bytes] is [null] or empty (`bytes.length == 0`), returns an empty
/// [TypedData<List<int>>]. If the list cannot be converted returns null.
typedef List<int> IntViewer(Uint8List bytes);

/// Returns a [String] specifying any issues with [value]. If [value]
/// [isValid] returns [null].
typedef String IntIssuer(int value);

/// Returns a valid [int]. Iff [value] [isValid] it is returned unmodified.
/// If [value] has one or more issues that can be fixed, returns a modified
/// value. If [value] [isNotValid] and cannot be fixed returns [null].
typedef int IntFixer(int value);

/// Create an integer VR.
//TODO: doc
class VRInt extends VR<int> {
  final int min;
  final int max;
  final BytesToValues fromBytes;
  final bool undefinedLengthAllowed;

  const VRInt._(
      int index,
      int code,
      String id,
      int elementSize,
      int vfLengthFieldSize,
      int maxVFLength,
      String keyword,
      this.min,
      this.max,
      this.fromBytes,
      [this.undefinedLengthAllowed = false])
      : super(index, code, id, elementSize, vfLengthFieldSize, maxVFLength,
            keyword);

  @override
  int get minValueLength => min;
  @override
  int get maxValueLength => max;

  /// Returns [true] of [value] is valid for this [VRBase].
  @override
  bool isValid(int n) => (min <= n) && (n <= max);

  bool isValidList(List<int> list) {
    for (int i in list) if (isNotValid(i)) return false;
    return true;
  }

  /// Returns a [String] indicating the issue with value. If there are no
  /// issues returns the empty string ("").
  @override
  String issue(int n) => (isNotValid(n))
      ? 'Range Error: min($min) <= value($n) <= max($max)'
      : null;

  /// Returns a valid, possibly coerced, value.
  @override
  int fix(int n) {
    if (n < min) return min;
    if (n > max) return max;
    return n;
  }

  @override
  List<int> view(Uint8List list) => fromBytes(list, 0, list.length, true);

  List<int> copy(Uint8List list) => fromBytes(list, 0, list.length, false);

  /// Returns [true] if [bytes] contains a valid Value Field.
  //TODO: implement or flush
  @override
  Uint8List isValidBytes(Uint8List bytes) => null;

  // index, code, id, elementSize, vfLengthFieldSize, maxVFLength, keyword
  static const VRInt kAT = const VRInt._(3, 0x5441, "AT", 4, 2, kMaxShortVF,
      "Attribute Tag Code", 0, Uint32.max, Uint32.fromBytes);

  static const VRInt kOB = const VRInt._(14, 0x424f, "OB", 1, 4, kMaxOB,
      "OtherByte", 0, Uint8.max, Uint8.fromBytes, true);

  static const VRInt kOL = const VRInt._(17, 0x4c4f, "OL", 4, 4, kMaxOL,
      "OtherLong", 0, Uint32.max, Uint32.fromBytes);

  static const VRInt kOW = const VRInt._(18, 0x574f, "OW", 2, 4, kMaxOW,
      "OtherWord", 0, Uint16.max, Uint16.fromBytes, true);

  static const VRInt kSL = const VRInt._(21, 0x4c53, "SL", 4, 2, kMaxShortVF,
      "SignedLong", Int32.min, Int32.max, Int32.fromBytes);

  static const VRInt kSS = const VRInt._(23, 0x5353, "SS", 2, 2, kMaxShortVF,
      "SignedShort", Int16.min, Int16.max, Int16.fromBytes);

  static const VRInt kUL = const VRInt._(28, 0x4c55, "UL", 4, 2, kMaxShortVF,
      "UnsignedLong", 0, Uint32.max, Uint32.fromBytes);

  static const VRInt kUN = const VRInt._(
      29, 0x4e55, "UN", 1, 4, kMaxUN, "Unknown", 0, Uint8.max, Uint8.fromBytes);

  static const VRInt kUS = const VRInt._(31, 0x5355, "US", 2, 2, kMaxShortVF,
      "UnsignedShort", 0, Uint16.max, Uint16.fromBytes);
}

/// This class is used by the Tag class.  It is NOT used for parsing, etc.
class VRIntSpecial extends VR {
  final int min = 0;
  final int max = 0;

  const VRIntSpecial._(int index, int code, String id, String keyword)
      : super(index, code, id, 0, 0, 0, keyword);

  // Special constants only used in Tag class
  static const VRIntSpecial kOBOW =
      const VRIntSpecial._(34, 0x0001, "OBOW", "OBorOW");

  static const VRIntSpecial kUSSS =
      const VRIntSpecial._(35, 0x0002, "USSS", "USorSS");

  static const VRIntSpecial kUSSSOW =
      const VRIntSpecial._(36, 0x0003, "USSSOW", "USorSSorOW");

  static const VRIntSpecial kUSOW =
      const VRIntSpecial._(37, 0x0004, "USOW", "USorOW");

  static const VRIntSpecial kUSOW1 =
      const VRIntSpecial._(38, 0x0005, "USOW1", "USorOW1");
}