import 'package:cleopatra/data/models/service_models.dart';
import 'package:get/get.dart';

class ConfirmationController extends GetxController {
  late List<ServiceModel> services;

  double get totalPrice =>
      services.fold(0, (sum, service) => sum + service.price);

  int get totalDurationInMinutes => services.fold(0, (sum, service) {
        final minutes =
            int.tryParse(service.duration.replaceAll(RegExp(r'[^0-9]'), '')) ??
                0;
        return sum + minutes;
      });

  String get totalDurationFormatted {
    final totalMinutes = totalDurationInMinutes;
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    if (hours > 0) {
      return '$hours hrs $minutes mins';
    } else {
      return '$minutes mins';
    }
  }

  @override
  void onInit() {
    services = (Get.arguments as List<ServiceModel>);
    super.onInit();
  }
}
