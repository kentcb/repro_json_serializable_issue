// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentDto _$ParentDtoFromJson(Map<String, dynamic> json) => ParentDto(
      const ChildDtoBuiltListConverter()
          .fromJson(json['children'] as List<ChildDto>),
    );

Map<String, dynamic> _$ParentDtoToJson(ParentDto instance) => <String, dynamic>{
      'children': const ChildDtoBuiltListConverter().toJson(instance.children),
    };

ChildDto _$ChildDtoFromJson(Map<String, dynamic> json) => ChildDto(
      json['value'] as int,
    );

Map<String, dynamic> _$ChildDtoToJson(ChildDto instance) => <String, dynamic>{
      'value': instance.value,
    };
