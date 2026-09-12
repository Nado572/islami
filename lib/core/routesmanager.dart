import 'package:flutter/material.dart';
import 'package:islamy/features/main/homescreen.dart';
abstract class RoutesManager{
  static const String home='/homescreen';



  static Map<String ,WidgetBuilder> routes ={
    home :((context) => HomeScreen()),
  };
}