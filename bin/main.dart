import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'dtos.dart';

void main(List<String> arguments) {
  print('Attempting round trip...');
  final dto = ParentDto(BuiltList.of(<ChildDto>[ChildDto(42)]));
  final ser = dto.toJson();
  final json = jsonEncode(ser);
  final deserJson = jsonDecode(json);
  final deser = ParentDto.fromJson(deserJson);
  print('JSON: $json');
  print('RESULT: $deser');
}
