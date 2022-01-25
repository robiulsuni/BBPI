// To parse this JSON data, do
//
//     final technologmodel = technologmodelFromJson(jsonString);

import 'dart:convert';

List<Technologmodel> technologmodelFromJson(String str) =>
    List<Technologmodel>.from(
        json.decode(str).map((x) => Technologmodel.fromJson(x)));

class Technologmodel {
  Technologmodel({
    this.id,
    this.img,
    this.computer,
    this.departmentinfo,
    this.lab,
    this.architecture,
    this.electromedical,
    this.refrigeration,
  });

  int? id;
  String? img;
  String? computer;
  String? departmentinfo;
  String? lab;
  String? architecture;
  String? electromedical;
  String? refrigeration;

  factory Technologmodel.fromJson(Map<String, dynamic> json) => Technologmodel(
        id: json["id"],
        img: json["img"],
        computer: json["computer"] == null ? null : json["computer"],
        departmentinfo: json["departmentinfo"],
        lab: json["lab"],
        architecture:
            json["architecture"] == null ? null : json["architecture"],
        electromedical:
            json["electromedical"] == null ? null : json["electromedical"],
        refrigeration:
            json["refrigeration"] == null ? null : json["refrigeration"],
      );
}
