// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:dictionary/dictionary.dart';

import 'tag_class_code.dart';

const String outputDir = "C:/odw/sdk/core/lib/src/base/tag/gen/output";
const String outputPath = outputDir + '/tag.dart';

void main(args) {

  File outFile = new File(outputPath);
  var members = generateMembers(tags);
  var s = '$header$members';
  print(s);
  outFile.writeAsStringSync(s);
}

String generateMembers(Map<int, DED> map) {
  var s = "";

  map.forEach((int tag, DED deDef) {
    s += '  static const Tag k${deDef.keyword} = const Tag(${tagToHex(tag)});\n';
  });
  return s += '}\n';
}