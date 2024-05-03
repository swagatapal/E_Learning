import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() {
    return _instance;
  }

  AppColors._internal();

  //General
  static const Color primaryButtonColor = Color(0xFF00707E);


  static const Color white = Color(0xFFFFFFFF);
  static const Color circleBackground = Color(0xFFD9EFF2);


}
