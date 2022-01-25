// To parse this JSON data, do
//
//     final mujibModel = mujibModelFromJson(jsonString);

import 'dart:convert';

List<MujibModel> mujibModelFromJson(String str) =>
    List<MujibModel>.from(json.decode(str).map((x) => MujibModel.fromJson(x)));

class MujibModel {
  MujibModel({
    this.id,
    this.mujibTital,
    this.img,
    this.mujibDefinition,
  });

  int? id;
  String? mujibTital;
  String? img;
  String? mujibDefinition;

  factory MujibModel.fromJson(Map<String, dynamic> json) => MujibModel(
        id: json["id"],
        mujibTital: json["mujib_tital"],
        img: json["img"],
        mujibDefinition: json["mujib_definition"],
      );
}
