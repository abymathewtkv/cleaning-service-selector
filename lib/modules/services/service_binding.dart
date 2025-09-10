import 'package:cleopatra/modules/services/service_controller.dart';
import 'package:get/get.dart';


class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ServicesController());
  }
}