// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:dictionary/dictionary.dart';
import 'package:dictionary/src/dicom/tag/tag.dart';

const String outputDir = "C:/odw/sdk/core/lib/src/base/tag/gen/output";
const String outputPath = outputDir + '/constants.dart';

void main(args) {

  File outFile = new File(outputPath);
  var s = generateConstants(deDefs);
  //print(s);
  outFile.writeAsStringSync(s);
}

String generateConstants(Map<int, ElementDef> map) {
  var s = '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This file generated by 'generate_constants.dart' ***
// ----------------------------------------------------------


// Ordered List DICOM Data Element [keyword]s and their [tag] values;

''';
  map.forEach((int tag, ElementDef deDef) {
    s += 'const int k${deDef.keyword} = ${Tag.hex(tag)}; \n';
  });
  return s;
}