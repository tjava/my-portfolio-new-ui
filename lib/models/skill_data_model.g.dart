// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillDataModel _$SkillDataModelFromJson(Map<String, dynamic> json) =>
    SkillDataModel()
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SkillDataModelToJson(SkillDataModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
