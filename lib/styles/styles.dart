import 'package:flutter/material.dart';

double extraSmallTextSize = 12.0;
double smallTextSize = 14.0;
double mediumTextSize = 18.0;
double largeTextSize = 20.0;
double xlTextSize = 36.0;
double xxlTextSize = 52.0;

TextStyle styleAppButtonLabel = TextStyle(
    fontSize: largeTextSize,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.4,
    color: Colors.white);
TextStyle styleheadingRegular = TextStyle(
    fontSize: xxlTextSize, color: Colors.black, fontWeight: FontWeight.w300);
TextStyle styleDisplay2(BuildContext context) => TextStyle(
    fontSize: xxlTextSize, fontWeight: FontWeight.w900, color: Colors.black);
TextStyle styleMenuTextBold(BuildContext context) => Theme.of(context)
    .textTheme
    .body2
    .copyWith(fontWeight: FontWeight.w800, fontSize: mediumTextSize);
TextStyle styleHint(BuildContext context) =>
    Theme.of(context).textTheme.body1.copyWith(color: Colors.grey);
TextStyle styleTitle(BuildContext context) => Theme.of(context)
    .textTheme
    .title
    .copyWith(fontWeight: FontWeight.w600, color: Colors.black);
TextStyle styleTitleGray(BuildContext context) => Theme.of(context)
    .textTheme
    .title
    .copyWith(fontWeight: FontWeight.w500, color: Colors.black45);
