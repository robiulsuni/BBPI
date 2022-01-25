import 'package:flutter/services.dart';
import '../models/mujib_model.dart';

class MujibRepo {
  static Future<List<MujibModel>> getMujib() async {
    final response = await rootBundle.loadString('assets/json/mujib.json');
    print(response);
    if (response == null) {
      return [];
    } else {
      return mujibModelFromJson(response);
    }
  }
}
