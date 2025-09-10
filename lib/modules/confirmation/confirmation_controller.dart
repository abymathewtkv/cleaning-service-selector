import 'package:cleopatra/data/models/service_models.dart';
import 'package:get/get.dart';

class ConfirmationController extends GetxController {
  late List<ServiceModel> services;

  double get totalPrice =>
      services.fold(0, (sum, service) => sum + service.price);

  @override
  void onInit() {
   
    services = (Get.arguments as List<ServiceModel>);
    super.onInit();
  }
}
