import 'package:flutter/services.dart';
import '../models/innovation_model.dart';

class InnovationRepo {
  static Future<List<InnovationModel>> getInnovation() async {
    final response = await rootBundle.loadString('assets/json/innovation.json');
    if (response == null) {
      return [];
    } else {
      return innovationModelFromJson(response);
    }
  }
}
