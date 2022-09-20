// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) => ProjectModel()
  ..id = json['id'] as int?
  ..name = json['name'] as String?
  ..slug = json['slug'] as String?
  ..description = json['description'] as String?
  ..detailDescription = json['detailDescription'] as String?
  ..image = json['image'] as String?
  ..dateCreated = json['dateCreated'] as String?
  ..languagesUsed = (json['languagesUsed'] as List<dynamic>?)
      ?.map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
      .toList()
  ..links = (json['links'] as List<dynamic>?)
      ?.map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$ProjectModelToJson(ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'detailDescription': instance.detailDescription,
      'image': instance.image,
      'dateCreated': instance.dateCreated,
      'languagesUsed': instance.languagesUsed,
      'links': instance.links,
    };
