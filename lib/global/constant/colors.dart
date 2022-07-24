import 'package:flutter/material.dart';

const kCultured = Color(0xfff6f6f6);
const kWhite = Color(0xFFFFFFFF);
const kGhostWhite = Color(0xFFFFFEFA);
const kBlack = Color(0xFF000000);
const kYankeesBlue = Color(0x161b1d3b);
const kEerieBlack = Color(0xFF161B1D);
const kRichBlack = Color(0x0000001a);
const kCharcoal = Color(0xFF313D4C);
const kAquamarine = Color(0xFF6EFDD1);
const kMintGreen = Color(0xFF94FFA6);
const kRoyalBlue = Color(0xFF3D60DC);

final Shader linearGradient = const LinearGradient(
  colors: <Color>[kAquamarine, kMintGreen],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
).createShader(
  const Rect.fromLTWH(0.0, 0.0, 0.0, 0.0),
);

const kGreenLinear = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  tileMode: TileMode.decal,
  colors: [
    kAquamarine,
    kMintGreen,
  ],
);
