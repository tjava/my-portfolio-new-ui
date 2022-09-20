import 'package:json_annotation/json_annotation.dart';
import 'package:my_portfolio_ui/models/link_model.dart';
import 'package:my_portfolio_ui/models/skill_model.dart';

part 'project_model.g.dart';

@JsonSerializable()
class ProjectModel {
  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "slug")
  String? slug;

  @JsonKey(name: "description")
  String? description;

  @JsonKey(name: "detailDescription")
  String? detailDescription;

  @JsonKey(name: "image")
  String? image;

  @JsonKey(name: "dateCreated")
  String? dateCreated;

  @JsonKey(name: "languagesUsed")
  List<SkillModel>? languagesUsed;

  @JsonKey(name: "links")
  List<LinkModel>? links;

  ProjectModel();

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}
