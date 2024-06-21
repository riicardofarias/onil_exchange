import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetObx<T> extends GetView<T> {
  final Widget Function(T) builder;

  const GetObx({ required this.builder });

  @override
  Widget build(BuildContext context) {
    return builder(controller);
  }
}