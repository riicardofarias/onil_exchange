import 'package:flutter/material.dart';

extension FormStateExtension on GlobalKey<FormState> {
  bool get isValid => currentState!.validate();
  bool get isNotValid => !currentState!.validate();
}