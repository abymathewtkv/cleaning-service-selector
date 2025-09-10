import 'package:cleopatra/data/models/service_models.dart';
import 'package:get/get.dart';
import '../../utils/mock_data.dart';

class ServicesController extends GetxController {
  var services = <ServiceModel>[].obs;

  var selectedServices = <ServiceModel>[].obs;

  @override
  void onInit() {
    services.value = MockData.services;
    super.onInit();
  }

  void toggleServiceSelection(ServiceModel service) {
    final existing = selectedServices.firstWhereOrNull(
      (s) => s.name == service.name && s.type == service.type,
    );

    if (existing != null) {
      selectedServices.remove(existing);
    } else {
      selectedServices.add(service);
    }
  }

  void clearSelection() {
    selectedServices.clear();
  }

  double get totalPrice => selectedServices.fold(0, (sum, s) => sum + s.price);
}
