import 'package:flutter/material.dart';

const kCultured = Color(0xfff6f6f6);
const kWhite = Color(0xFFFFFFFF);
const kCharcoal = Color(0xFF313D4C);
const kAquamarine = Color(0xFF6EFDD1);
const kMintGreen = Color(0xFF94FFA6);
const kBlack = Color(0xFF000000);
const kRichBlack = Color(0x0000001a);
const kRoyalBlue = Color(0xFF3D60DC);
const kEerieBlack = Color(0xFF161B1D);
const kYankeesBlue = Color(0x161b1d3b);
const kGhostWhite = Color(0xFFFFFEFA);

final Shader linearGradient = const LinearGradient(
  colors: <Color>[kAquamarine, kMintGreen],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
).createShader(const Rect.fromLTWH(0.0, 0.0, 0.0, 0.0));

const kGreenLinear = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  tileMode: TileMode.decal,
  colors: [
    kAquamarine,
    kMintGreen,
  ],
);

// const kWhiteLinear = LinearGradient(
//   begin: Alignment.centerLeft,
//   end: Alignment.centerRight,
//   colors: [
//     Color.fromRGBO(255, 255, 255, 1),
//     Color.fromRGBO(255, 255, 255, 0),
//   ],
// );
