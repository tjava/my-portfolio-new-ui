import 'package:json_annotation/json_annotation.dart';

part 'link_model.g.dart';

@JsonSerializable()
class LinkModel {
  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "link")
  String? link;

  @JsonKey(name: "name")
  String? name;

  LinkModel();

  factory LinkModel.fromJson(Map<String, dynamic> json) =>
      _$LinkModelFromJson(json);

  Map<String, dynamic> toJson() => _$LinkModelToJson(this);
}
