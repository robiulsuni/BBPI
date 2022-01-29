import 'package:flutter/services.dart';
import '../models/student_model.dart';

class StudentRepo {
  static Future<List<StudentModel>> getStudent() async {
    final response = await rootBundle.loadString('assets/json/student.json');
    if (response == null) {
      return [];
    } else {
      return studentModelFromJson(response);
    }
  }
}
