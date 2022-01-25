import 'package:flutter/services.dart';

import '../models/technology_model.dart';

class TechnologRepo {
  static Future<List<Technologmodel>> getTechnology() async {
    final response = await rootBundle.loadString('assets/json/technology.json');
    print(response);
    if (response == null) {
      return [];
    } else {
      return technologmodelFromJson(response);
    }
  }
}
