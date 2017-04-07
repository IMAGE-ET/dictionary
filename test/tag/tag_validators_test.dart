// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// See the AUTHORS file for contributors.

import 'dart:math';

import 'package:common/logger.dart';
import 'package:common/number.dart';
import 'package:dictionary/src/tag/p_tag.dart';
import 'package:dictionary/src/tag/tag.dart';
import 'package:dictionary/src/vr/vr.dart';
import 'package:test/test.dart';
import 'package:test_tools/random_string.dart' as rsg;

final Logger log = new Logger('uint_test.dart', watermark: Severity.debug);

void main() {
  validateTest();
}

void validateTest() {
  Tag tagCSCode = PTag.kLanguageCodeSequence;
  Tag tagCS = PTag.kImageType;
  //   new Tag.public("Image​Type", 0x00080008, "Image Type", VR.kCS, VM.k2_n);
  Tag tagSQ = PTag.kLanguageCodeSequence;
  //new Tag.public("LanguageCodeSequence", 0x00080005,
  //    "Language Code Sequence", VR.kSQ, VM.k1, false);
  Tag tagUS = PTag.kNumberOfZeroFills;
  //new Tag.public("NumberOfZeroFills", 0x00189066,
  //   "Number of Zero Fills", VR.kUS, VM.k1_2, false);

  group("Tag validators in tag", () {
    test("test for isvalidvalues", () {
      var listsInt = new List<int>();
      //Urgent: Create legal and illegal String list generators for each VR
      //Urgent: Test all VRs with both lists
      for (int i = 0; i < 10; i++) {
        listsInt.add(i);
      }
      var listsStr = new List<String>();
      for (int i = 0; i < 10; i++) {
        listsStr.add(rsg.randomString(12, noLowerCase: true) +
            new String.fromCharCode([32, 95][new Random().nextInt(2)]));
      }
      expect(tagCSCode.isValidValues(listsInt), false);
      //Urgent: add test for invalid Strings
      expect(tagCS.isValidValues(listsStr), true);
    });

    test("test for isValidLength", () {
      expect(tagCS.isValidLength(tagCS.maxLength + 1), false);
      expect(tagCS.isValidLength(tagCS.maxLength), true);
      log.debug(
          'tagCS: maxLength(${tagCS.maxLength}, ${Int16.hex(tagCS.maxLength)}');
      expect(tagCS.isValidLength(tagCS.maxLength - 1), true);
      expect(tagCS.isValidLength(tagCS.minLength - 1), false);
      expect(tagCS.isValidLength(tagCS.minLength), true);

      expect(tagSQ.isValidLength(tagSQ.minLength), true);
      expect(tagSQ.isValidLength(tagSQ.minLength - 1), true);
      expect(tagSQ.isValidLength(tagSQ.minLength + 1), false);
      expect(tagSQ.isValidLength(tagSQ.maxLength), true);
      expect(tagSQ.isValidLength(tagSQ.maxLength - 1), true);

      expect(tagUS.isValidLength(tagUS.minLength), true);
      expect(tagUS.isValidLength(tagUS.minLength - 1), true);
      expect(tagUS.isValidLength(tagUS.minLength + 1), true);
      expect(tagUS.isValidLength(tagUS.maxLength), true);
      expect(tagUS.isValidLength(tagUS.maxLength + 1), false);
    });

    test("test for isValidWidth", () {
      //Urgent: change
      expect(tagCS.isValidWidth(tagCS.maxLength + 1), true);
      expect(tagCS.isValidWidth(tagCS.maxLength), true);
      expect(tagCS.isValidWidth(tagCS.minLength - 1), true);
      expect(tagCS.isValidWidth(tagCS.minLength), true);

      expect(tagSQ.isValidWidth(tagSQ.minLength), true);
      expect(tagSQ.isValidWidth(tagSQ.minLength - 1), true);
      expect(tagSQ.isValidWidth(tagSQ.maxLength), true);
      expect(tagSQ.isValidWidth(tagSQ.maxLength + 1), true);

      expect(tagUS.isValidWidth(tagUS.minLength), true);
      expect(tagUS.isValidWidth(tagUS.minLength - 1), true);
      expect(tagUS.isValidWidth(tagUS.maxLength), true);
      expect(tagUS.isValidWidth(tagUS.maxLength + 1), true);
    });

    test("test for isValidVFLength", () {
      int len = tagCS.minLength * tagCS.vr.minLength;
      log.debug('isValidVF: minValueLength(${tagCS.vr.minLength}) $len');
      expect(tagCS.isValidVFLength(tagCS.minLength * tagCS.vr.minLength), true);
      expect(tagCS.isValidVFLength((tagCS.minLength * tagCS.vr.minLength) - 1),
          false);
      expect(tagCS.isValidVFLength(tagCS.maxLength * tagCS.vr.maxLength), true);
      expect(tagCS.isValidVFLength((tagCS.maxLength * tagCS.vr.maxLength) + 1),
          false);

      log.debug('tagSQ maxLength: ${tagSQ.maxLength}');
      log.debug('vr: ${tagSQ.vr}');
      log.debug('${VR.kSQ.info}');
      log.debug('tagSQ vr.maxValueLength: ${tagSQ.vr.maxLength}');
      expect(tagSQ.isValidVFLength(tagSQ.maxLength * tagSQ.vr.maxLength), true);
      expect(tagSQ.isValidVFLength(tagSQ.maxLength * tagSQ.vr.maxLength + 1),
          false);
      expect(tagSQ.isValidVFLength(tagSQ.minLength * tagSQ.vr.minLength), true);
      expect(tagSQ.isValidVFLength(tagSQ.minLength * tagSQ.vr.minLength - 1),
          false);

      expect(tagUS.isValidVFLength(tagUS.minLength * tagUS.vr.minLength), true);
      expect(tagUS.isValidVFLength(tagUS.minLength * tagUS.vr.minLength - 1),
          false);
      expect(tagUS.isValidVFLength(tagUS.maxLength * tagUS.vr.maxLength), true);
      expect(tagUS.isValidVFLength(tagUS.maxLength * tagUS.vr.maxLength + 1),
          false);
    });
  });
}