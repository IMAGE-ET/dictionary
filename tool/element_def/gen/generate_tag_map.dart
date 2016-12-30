// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:dictionary/tag.dart';

const String outputDir = "C:/odw/sdk/core/lib/src/base/tag/gen/output";
const String outputPath = outputDir + '/de_defs.dart';

void main(args) {
  File outFile = new File(outputPath);
  var s = generateMap(tagMap);
  print(s);
  outFile.writeAsStringSync(s);
}

String generateMap(Map<int, Tag> map) {
  var s = '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import '../new/tag_constants.dart';

// *** This file generated by 'constant_class_table.dart' ***
// ----------------------------------------------------------

// Ordered List of all DICOM attributes
  const Map<int, Tag> tagMap = const {\n''';
  map.values.forEach((Tag tag) {
    s += '  ${tag.hex}: Tag.k${tag.keyword},\n';
  });
  return s += '];\n';
}