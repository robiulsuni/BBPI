// To parse this JSON data, do
//
//     final studentModel = studentModelFromJson(jsonString);

import 'dart:convert';

List<StudentModel> studentModelFromJson(String str) => List<StudentModel>.from(
    json.decode(str).map((x) => StudentModel.fromJson(x)));

class StudentModel {
  StudentModel({
    this.id,
    this.img,
    this.studentinfo,
  });

  int? id;
  String? img;
  String? studentinfo;

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        id: json["id"],
        img: json["img"],
        studentinfo: json["studentinfo"],
      );
}
