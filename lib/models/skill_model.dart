import 'package:json_annotation/json_annotation.dart';

part 'skill_model.g.dart';

@JsonSerializable()
class SkillModel {
  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "image")
  String? image;

  SkillModel();

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}
