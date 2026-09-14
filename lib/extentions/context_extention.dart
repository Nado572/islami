import 'package:flutter/material.dart';
extension contexthieghtwidth on BuildContext{
  double get getWidth=> MediaQuery.sizeOf(this).width;
  double get getHeight=> MediaQuery.sizeOf(this).height;
}
