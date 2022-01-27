import '../models/web_link_model.dart';
import 'package:flutter/services.dart';

class AppRepo {
  static Future<List<WebModel>> getWebLink() async {
    final respons = await rootBundle.loadString('assets/json/web_link.json');
    if (respons == null) {
      return [];
    } else {
      return webModelFromJson(respons);
    }
  }
}
