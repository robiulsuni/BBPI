// To parse this JSON data, do
//
//     final innovationModel = innovationModelFromJson(jsonString);

import 'dart:convert';

List<InnovationModel> innovationModelFromJson(String str) =>
    List<InnovationModel>.from(
        json.decode(str).map((x) => InnovationModel.fromJson(x)));

class InnovationModel {
  InnovationModel({
    this.id,
    this.ideaTitel,
    this.ideaDescription,
    this.img,
  });

  int? id;
  String? ideaTitel;
  String? ideaDescription;
  String? img;

  factory InnovationModel.fromJson(Map<String, dynamic> json) =>
      InnovationModel(
        id: json["id"],
        ideaTitel: json["idea_titel"],
        ideaDescription: json["idea_description"],
        img: json["img"] == null ? null : json["img"],
      );
}
