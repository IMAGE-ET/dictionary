// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:typed_data';

getLength (Uint8List bytes, int offsetInBytes, int length, int shiftValue) {
  if (offsetInBytes < 0) throw new ArgumentError('Invalid offsetInBytes($offsetInBytes)');
  if (length == null) length = (bytes.lengthInBytes - offsetInBytes) >> shiftValue;
  if (length < 0) throw new ArgumentError('Invalid length($length)');
  return length;
}