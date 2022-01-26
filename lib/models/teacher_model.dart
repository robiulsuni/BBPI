// To parse this JSON data, do
//
//     final teacher = teacherFromJson(jsonString);

import 'dart:convert';

List<Teacher> teacherFromJson(String str) =>
    List<Teacher>.from(json.decode(str).map((x) => Teacher.fromJson(x)));

class Teacher {
  Teacher({
    this.id,
    this.department,
    this.teacherinfo,
  });

  int? id;
  String? department;
  Map<String, Teacherinfo>? teacherinfo;

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
        id: json["id"],
        department: json["department"],
        teacherinfo: Map.from(json["teacherinfo"]).map((k, v) =>
            MapEntry<String, Teacherinfo>(k, Teacherinfo.fromJson(v))),
      );
}

class Teacherinfo {
  Teacherinfo({
    this.img,
    this.name,
    this.position,
    this.education,
    this.number,
  });

  String? img;
  String? name;
  String? position;
  String? education;
  String? number;

  factory Teacherinfo.fromJson(Map<String, dynamic> json) => Teacherinfo(
        img: json["img"],
        name: json["name"],
        position: json["position"],
        education: json["education"],
        number: json["number"],
      );
}
