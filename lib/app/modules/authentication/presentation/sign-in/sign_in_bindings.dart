import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/domain/repository/authentication_repository.dart';
import 'package:onil/app/modules/authentication/domain/usecase/auth_email.dart';
import 'package:onil/app/modules/authentication/infra/repository/authentication_repository.dart';
import 'package:onil/app/modules/authentication/presentation/sign-in/sign_in_controller.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<IAuthenticationRepository>(AuthenticationRepository(Get.find()));

    Get.lazyPut<SignInController>(() => SignInController(
      Get.find(), AuthEmailUseCase(Get.find(), Get.find())
    ));
  }
}