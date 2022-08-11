import 'dart:convert';

import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:flutter/services.dart';

class Applocalizations {
  final Locale locale;
  Applocalizations({required this.locale});

  static Applocalizations? of(BuildContext context) {
    return Localizations.of<Applocalizations>(context, Applocalizations);
  }

  Map<String, dynamic> _localization = {};
  Future<bool> load() async {
    String jsonString = await rootBundle
        .loadString('assets/locales/${locale.languageCode}.json');
    Map<String, dynamic> data = jsonDecode(jsonString);
    _localization = data.map((key, value) => MapEntry(key, value));
    return true;
  }
}
