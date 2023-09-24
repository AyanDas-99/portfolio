import 'package:flutter/material.dart';

class Responsive {
  static const _smallPhone = 320;
  static const _phone = 580;
  static const _tab = 860;
  static const _desktop = 1024;
  static const _desktop2 = 1250;
  static const _largeDesktop = 1440;

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width > _phone;

  static bool isSmallPhone(BuildContext context) =>
      MediaQuery.of(context).size.width > _smallPhone;

  static bool isTab(BuildContext context) =>
      MediaQuery.of(context).size.width > _tab;

  static bool isSmallDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > _desktop;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > _desktop2;

  static bool isLargeDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > _largeDesktop;

  const Responsive._();
}
