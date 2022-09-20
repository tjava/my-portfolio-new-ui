import 'package:json_annotation/json_annotation.dart';
import 'package:my_portfolio_ui/models/skill_model.dart';

part 'skill_data_model.g.dart';

@JsonSerializable()
class SkillDataModel {
  @JsonKey(name: "data")
  List<SkillModel>? data;

  SkillDataModel();

  factory SkillDataModel.fromJson(Map<String, dynamic> json) =>
      _$SkillDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$SkillDataModelToJson(this);
}
