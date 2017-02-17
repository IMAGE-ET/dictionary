// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';
import 'package:test/test.dart';

void main() {
  fooTest();
}

void fooTest() {
  
  group('Uid Tests', () {


    test('String to UID', () {
      Uid uid = Uid.parse("1.2.840.10008.1.2");
      expect(uid == WKUid.kImplicitVRLittleEndian, true);
      expect(uid.asString, equals("1.2.840.10008.1.2"));
      uid = Uid.parse("1.2.840.10008.1.2.1");
      expect(uid == WKUid.kExplicitVRLittleEndian, true);

    });

    test('String to TransferSyntax', () {
      UidBase uid = TransferSyntax.lookup("1.2.840.10008.1.2");
      expect(uid == TransferSyntax.kImplicitVRLittleEndian, true);
      uid = TransferSyntax.lookup("1.2.840.10008.1.2.1");
      expect(uid == TransferSyntax.kExplicitVRLittleEndian, true);

    });


  });

}