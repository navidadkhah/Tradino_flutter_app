import 'package:flutter/material.dart';

const kWhiteGray = Color.fromRGBO(246, 246, 246, 1);
const kWhite = Color.fromRGBO(255, 255, 255, 1);
const kGrayBlack = Color.fromRGBO(49, 61, 76, 1);
const KLightGreen = Color.fromRGBO(110, 253, 209, 1);
const KDarkGreen = Color.fromRGBO(148, 255, 166, 1);
const kBlack = Color.fromRGBO(0, 0, 0, 1);
const kBlackWithOp = Color.fromRGBO(0, 0, 0, .1);
const kBlue = Color.fromRGBO(61, 96, 220, 1);
const kGray = Color.fromRGBO(147, 149, 152, 1);
final Shader linearGradient = const LinearGradient(
  colors: <Color>[KLightGreen, KDarkGreen],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
).createShader(Rect.fromLTWH(0.0, 0.0, 0.0, 0.0));

const kGreenLinear = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    KLightGreen,
    KDarkGreen,
  ],
);

const kWhiteLinear = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(255, 255, 255, 0),
  ],
);
