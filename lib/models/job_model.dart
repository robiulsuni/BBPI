// To parse this JSON data, do
//
//     final jobModel = jobModelFromJson(jsonString);

import 'dart:convert';

List<JobModel> jobModelFromJson(String str) =>
    List<JobModel>.from(json.decode(str).map((x) => JobModel.fromJson(x)));

class JobModel {
  JobModel({
    this.id,
    this.img,
    this.jobdefinition,
  });

  int? id;
  String? img;
  String? jobdefinition;

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        id: json["id"],
        img: json["img"],
        jobdefinition: json["jobdefinition"],
      );
}
