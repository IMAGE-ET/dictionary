// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:common/common.dart';
import 'package:dictionary/src/tag/private_creators_map.dart';
import 'package:dictionary/src/tag/private_data_tag.dart';

const String outputDir = "C:/odw/sdk/dictionary/tool/tag/gen/output";
const String classPath = outputDir + '/private_creator_tag.dart';
const String mapPath = outputDir + '/private_creator_map.dart';

void main(args) {
  var out;
  File classFile = new File(classPath);
  out = generateClass(privateCreatorsMap);
  //print('class:\n $out');
  classFile.writeAsStringSync(out);

  File mapFile = new File(mapPath);
  out = generatePrivateCreatorTagMap(privateCreatorsMap);
  //print('class:\n $out');
  mapFile.writeAsStringSync(out);
}

String generateClass(Map<String, Map<int, PrivateDataTag>> map) {
  var out = header;
  List<String> tokens = map.keys.toList(growable: false);
  List<Map<int, PrivateDataTag>> dMaps = map.values.toList(growable: false);

  for (int i = 0; i < privateCreatorsMap.length; i++) {
    String token = tokens[i];
    Map<int, PrivateDataTag> dMap = dMaps[i];
    String args = '$i, "$token", ${generateDataMap(dMap)}';
    out += 'static const PrivateCreatorTag k$i =\n'
        '    const PrivateCreatorTag._($args);\n';
  }
  ;
  return out += '}\n';
}

String header = '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:dictionary/src/tag/private_creator_tag_map.dart';
import 'package:dictionary/src/tag/private_data_tag.dart';
import 'package:dictionary/src/tag/public_tag.dart';
import 'package:dictionary/src/tag/tag.dart';
import 'package:dictionary/src/vm.dart';
import 'package:dictionary/src/vr/vr.dart';

class PrivateCreatorTag extends Tag {
  final String token;
  final Map<int, PrivateDataTag> dataTagMap;

  PrivateCreatorTag(code, this.token, this.dataTagMap)
      : super(code, VR.kLO, VM.k1) {
    if (!PublicTag.isPrivateCreatorCode(code))
      throw new ArgumentError('Invalid Private Creator Tag Code(code)');
  }

  const PrivateCreatorTag._(index, this.token, this.dataTagMap)
      : super(index, VR.kLO, VM.k1);

    bool get wasUN => super.vr == VR.kUN;

    @override
    bool get isPublic => false;
    @override
    bool get isCreator => true;

    int get base => elt << 8;

    int get limit => base + 0xFF;

    bool isValidDataCode(int code) =>
        group == codeGroup(code) &&
        (base <= codeElt(code) && codeElt(code) <= limit);

    static const PrivateCreatorTag kUnknown =
    const PrivateCreatorTag._(0, "UnknownName", const {});

    static Map<int, PrivateDataTag> lookup(String creatorToken, [int code]) =>
        creatorsMap[creatorToken];
''';
/*

}
*/
String generateDataMap(Map<int, PrivateDataTag> map) {
  String out = "\nconst <int, PrivateDataTag>{\n";
  map.forEach((int code, PrivateDataTag tag) {
    out += '        ${Uint32.hex(code)}: PrivateDataTag.k${tag.id},\n';
  });
  return out += '}\n';
}

String generatePrivateCreatorTagMap(Map<String, Map<int, PrivateDataTag>> map) {
  var out = '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:dictionary/src/tag/private_creator_tag.dart';

// *** This file generated by 'generate_private_creator_tag_map.dart' ***
// ----------------------------------------------------------

/// Ordered List of all Known Private Creator Tokens with PrivateDataTagMap.
const Map<String, PrivateCreatorTag> privateCreatorTagMap = const {\n''';

  List<String> tokens = map.keys.toList(growable: false);
  for (int i = 0; i < privateCreatorsMap.length; i++) {
    String token = tokens[i];
    out += '  "$token": PrivateCreatorTag.k$i,\n';
  }
  return out += '};\n';
}
