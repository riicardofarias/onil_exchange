import 'package:get/get.dart';

mixin LoadingMixin {
  var loading = false.obs;

  void setLoading(bool value) {
    loading.value = value;
  }

  bool get isLoading => loading.value;
}