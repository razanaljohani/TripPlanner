import 'package:get/instance_manager.dart';

import '../controller/auth_controller.dart';

class AuthBiniding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
