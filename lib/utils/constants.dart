import 'dart:ui';
import './services.dart';

class Constants {
  /// Routes name
  static const String homeRoute = '/';
  static const String kozakViewRoute = 'kozak_view';
  static const String categories = 'categories';

  /// Font
  static const font = 'Rubik';

  /// Colors
  static Color red = Services.hexToColor('#BF0831');
  static Color grey = Services.hexToColor('#828282');
  static Color black = Services.hexToColor('#000000');
}
