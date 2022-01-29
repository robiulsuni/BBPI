import 'package:flutter/services.dart';
import '../models/job_model.dart';

class JobRepo {
  static Future<List<JobModel>> getJob() async {
    final response = await rootBundle.loadString('assets/json/job.json');
    if (response == null) {
      return [];
    } else {
      return jobModelFromJson(response);
    }
  }
}
