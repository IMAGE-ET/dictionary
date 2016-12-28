// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:typed_data';

import 'package:dictionary/src/dicom/constants.dart';

/// Floating Point Data Types

//TODO: need work.

/// The [Type] of Range checkers.
typedef bool _InRange(double val);

double _floatError(String type, double min, double val, double max) {
  throw new RangeError('$type: out of range (min <= val <= max');
}

class Float {
  static String get type => "Float";

  static bool inRange(double min, double val, double max) => (min <= val && val <= max);

  static double guard(double min, double val, double max) =>
      inRange(min, val, max) ? val : _floatError(type, min, val, max);


  /// Returns a [List<int>] if all values are [int], otherwise null.
  @deprecated
  static List<double> validate(List<double> values, _InRange inRange) =>
      listGuard(values, inRange);

  /// Returns a [List<int>] if all values are [int], otherwise null.
  static List<double> listGuard(List<double> values, _InRange inRange) {
    print('values: $values');
    for (int i = 0; i < values.length; i++)
      if ((values[i] is double) && inRange(values[i])) {
        print('values: $values');
        return values;
      }
    return null;
  }

  /// Returns a [List<int>] if all values are [int], otherwise [null].
  static bool isValidList(List<double> vList, _InRange inRange) {
    if (listGuard(vList, inRange) == null) return false;
    return true;
  }

  static bool isNotValidList(List<double> vList, _InRange inRange) =>
      !isValidList(vList, inRange);
}

class Float32 extends Float {
  static const name = "Float32";
  static const int sizeInBits = 32;
  static const int sizeInBytes = 4;

  //TODO: test
  static const min = 0x80800000;
  //TODO: test
  static const max = 0x7F7FFFFF;
  //TODO: test
  static const pZero = 0x00000000;
  //TODO: test
  static const mZero = 0x80000000;
  //TODO
  static const pInfinity = 0x7F800000;
  //TODO
  static const nInfinity = 0xFF800000;
  //TODO
  static const qNaN = 0x7FC00000;
  //TODO
  static const sNaN = 0x7FC00000;
  static const int maxShortLength = kMaxShortLengthInBytes ~/ sizeInBytes;
  static const int maxLongLength = kMaxLongLengthInBytes ~/ sizeInBytes;
  static final Float32List emptyList = new Float32List(0);

  static bool inRange(double val) => (val >= min) && (val <= max);

  static double guard(double min, double val, double max) =>
      inRange(val) ? val : _floatError("Float32", min, val, max);

  /// Returns a [values] if all values are valid Uint32, otherwise null.
  @deprecated
  static Float32List validate(Float32List values) => listGuard(values);

  /// Returns it argument [vList] if valid; otherwise, returns [null].
  static List<double> listGuard(List<double> vList) {
    if (vList == null || vList.length == 0) throw "invalid Float32: $vList";
    //return Float.listGuard(vList, inRange);
    return vList;
  }

  /// Returns a [true] if all values are valid Uint32, otherwise [false].
  static bool isValidList(List<double> vList) =>
      (listGuard(vList) == null) ? false : true;

  static bool isNotValidList(List<double> vList) =>
      !isValidList(vList);

  static bool isAligned(int offsetInBytes) => offsetInBytes % sizeInBytes == 0;

  static const shiftValue = 2;

  static int toLength(int lengthInBytes) => lengthInBytes >> shiftValue;

  static int toLengthInBytes(int length) => length << shiftValue;

  static Float32List bytesView(Uint8List bytes, [int offsetInBytes = 0, int length]) {
    if (offsetInBytes < 0) throw new ArgumentError('Invalid offsetInBytes($offsetInBytes)');
    if (length == null) length = bytes.lengthInBytes >> shiftValue;
    if (length < 0) throw new ArgumentError('Invalid length($length)');
    if (isAligned(offsetInBytes)) {
      return bytes.buffer.asFloat32List(offsetInBytes, length);
    } else {
      Float32List vList = new Float32List(length);
      ByteData bd = bytes.buffer.asByteData(offsetInBytes, length >> shiftValue);
      for (int i = 0; i < length; i++, offsetInBytes += sizeInBytes)
        vList[i] = bd.getFloat32(offsetInBytes);
      return vList;
    }
  }

  static toList(List<double> list) =>
      (list is Float32List) ? list : new Float32List.fromList(list);
}

class Float64 extends Float {
  static const name = "Float64";
  static const sizeInBits = 64;
  static const sizeInBytes = 8;
  static const shiftValue = 3;

  //TODO: test
  static const min = 0x8010000000000000;

  //TODO: test
  static const max = 0x7FEFFFFFFFFFFFFF;

  //TODO: test
  static const pZero = 0x0000000000000000;

  //TODO: test
  static const mZero = 0x8000000000000000;

  //TODO
  static const pInfinity = 0x7FF0000000000000;

  //TODO
  static const nInfinity = 0xFFF0000000000000;

  //TODO
  static const qNaNmin = 0x7FF8FFFFFFFFFFFF;

  //TODO
  static const qNaNmax = 0x7FFFC00000000000;

  //FIX wrong
  static const sNaNmin = 0x7FFF800000000001;

  //FIX wrong
  static const sNaNmax = 0x7FFFBFFFFFFFFFFF;
  static const maxShortLength = kMaxShortLengthInBytes - sizeInBytes;
  static const maxLongLength = kMaxLongLengthInBytes - sizeInBytes;
  static final Float64List emptyList = new Float64List(0);

  //TODO: is this needed - when used
  //TODO: correct?
  static bool inRange(double val) => (val >= min) && (val <= max);

  //TODO: is this needed - when used
  //TODO: correct?
  static double guard(double min, double val, double max) =>
      inRange(val) ? val : _floatError("Float64", min, val, max);

  //TODO: is this needed - when can a Float64List be invalid? it can't
  /// Returns a [values] if all values are valid Uint32, otherwise null.
  @deprecated
  static Float64List validate(Float64List values) => listGuard(values);

  /// Returns it argument [values] if valid; otherwise, returns [null].
  static List<double> listGuard(List<double> values) {
    if (values == null || values.length == 0) throw "invalid Float64: $values";
    //return Float.listGuard(vList, inRange);
    return values;
  }

  /// Returns a [true] if all values are valid Uint32, otherwise [false].
  static bool isValidList(List<double> vList) => (listGuard(vList) == null) ? false : true;

  static bool isNotValidList(List<double> vList) => !isValidList(vList);

  static bool isAligned(int offsetInBytes) => offsetInBytes % sizeInBytes == 0;

  static int toLength(int lengthInBytes) => lengthInBytes >> shiftValue;

  static int toLengthInBytes(int length) => length << shiftValue;

  static Float64List bytesView(Uint8List bytes, [int offsetInBytes = 0, int length]) {
    if (offsetInBytes < 0) throw new ArgumentError('Invalid offsetInBytes($offsetInBytes)');
    if (length == null) length = bytes.lengthInBytes >> shiftValue;
    if (length < 0) throw new ArgumentError('Invalid length($length)');
    if (isAligned(offsetInBytes)) {
      return bytes.buffer.asFloat64List(offsetInBytes, length);
    } else {
      Float64List vList = new Float64List(length);
      ByteData bd = bytes.buffer.asByteData(offsetInBytes, length >> shiftValue);
      for (int i = 0; i < length; i++, offsetInBytes += sizeInBytes)
        vList[i] = bd.getFloat64(offsetInBytes);
      return vList;
    }
  }

  static toList(List<double> list) =>
      (list is Float32List) ? list : new Float64List.fromList(list);
}
