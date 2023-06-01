import 'package:flutter/material.dart';

class AppLocalizationsEn {
  static const Map<String, String> translations = {
    'enter_phone': 'Enter Phone',
    'phone_number': 'Phone Number',
    'next': 'Next',
  };

  static String translate(String key) {
    return translations[key] ?? key;
  }
}

