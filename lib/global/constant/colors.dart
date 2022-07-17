import 'package:flutter/material.dart';

const kWhiteGray = Color.fromRGBO(246, 246, 246, 1);
const kWhite = Color.fromRGBO(255, 255, 255, 1);

const kGrayBlack = Color.fromRGBO(49, 61, 76, 1);
const KLightGreen = Color.fromRGBO(110, 253, 209, 1);
const KDarkGreen = Color.fromRGBO(148, 255, 166, 1);
const kBlack = Color.fromRGBO(0, 0, 0, 1);

final Shader linearGradient = const LinearGradient(
  colors: <Color>[KLightGreen, KDarkGreen],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
).createShader(Rect.fromLTWH(0.0, 0.0, 0.0, 0.0));
