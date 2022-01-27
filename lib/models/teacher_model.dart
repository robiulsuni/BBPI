// To parse this JSON data, do
//
//     final teacher = teacherFromJson(jsonString);

import 'dart:convert';

List<Teacher> teacherFromJson(String str) =>
    List<Teacher>.from(json.decode(str).map((x) => Teacher.fromJson(x)));

class Teacher {
  Teacher({
    required this.id,
    required this.department,
    required this.teacherinfo,
  });

  int id;
  String department;
  List<Teacherinfo> teacherinfo;

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
        id: json["id"],
        department: json["department"],
        teacherinfo: List<Teacherinfo>.from(
            json["teacherinfo"].map((x) => Teacherinfo.fromJson(x))),
      );
}

class Teacherinfo {
  Teacherinfo({
    this.id,
    this.img,
    this.name,
    this.position,
    this.education,
    this.number,
  });

  String? id;
  String? img;
  String? name;
  String? position;
  String? education;
  String? number;

  factory Teacherinfo.fromJson(Map<String, dynamic> json) => Teacherinfo(
        id: json["id"],
        img: json["img"],
        name: json["name"],
        position: json["position"],
        education: json["education"],
        number: json["number"],
      );
}
