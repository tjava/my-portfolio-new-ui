import 'package:json_annotation/json_annotation.dart';
import 'package:my_portfolio_ui/models/project_model.dart';

part 'project_data_model.g.dart';

@JsonSerializable()
class ProjectDataModel {
  @JsonKey(name: "data")
  List<ProjectModel>? data;

  ProjectDataModel();

  factory ProjectDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectDataModelToJson(this);
}
