// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectDataModel _$ProjectDataModelFromJson(Map<String, dynamic> json) =>
    ProjectDataModel()
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProjectDataModelToJson(ProjectDataModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
