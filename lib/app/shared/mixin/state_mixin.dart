import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/theme/app_text_theme.dart';

extension StateCtrl<T> on StateMixin<T> {
  Widget useStatus(NotifierBuilder<RxStatus> widget) {
    return SimpleBuilder(builder: (_) {
      return widget(status);
    });
  }

  Widget useObx(NotifierBuilder<T> widget, { Widget? empty, Widget? loading }) {
    return SimpleBuilder(builder: (_) {
      if(status.isLoading) {
        return loading ?? const Center(
          child: SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(),
          )
        );
      }

      if(status.isError) {
        return Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text('general_alert_error'.tr, textAlign: TextAlign.center),
          ),
        );
      }

      if(status.isEmpty || value == null) {
        return empty ?? const SizedBox.shrink();
      }

      return widget(value as T);
    });
  }
}