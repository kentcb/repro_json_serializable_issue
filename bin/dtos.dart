import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dtos.g.dart';

@JsonSerializable()
class ParentDto {
  ParentDto(this.children);

  @ChildDtoBuiltListConverter()
  final BuiltList<ChildDto> children;

  factory ParentDto.fromJson(Map<String, dynamic> json) => _$ParentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ParentDtoToJson(this);
}

@JsonSerializable()
class ChildDto {
  ChildDto(this.value);

  final int value;

  factory ChildDto.fromJson(Map<String, dynamic> json) => _$ChildDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChildDtoToJson(this);
}

class ChildDtoBuiltListConverter implements JsonConverter<BuiltList<ChildDto>, List<ChildDto>> {
  const ChildDtoBuiltListConverter();

  @override
  BuiltList<ChildDto> fromJson(List<ChildDto> json) => BuiltList.of(json);

  @override
  List<ChildDto> toJson(BuiltList<ChildDto> object) => object.toList(growable: false);
}
