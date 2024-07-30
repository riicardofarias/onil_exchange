import 'dart:ui';

extension StringColorExtensions on String {
  Color toColor() => Color(int.parse(replaceAll('#', '0xff')));
}