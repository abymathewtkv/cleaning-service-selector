import 'package:cleopatra/modules/services/service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/routes/app_routes.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ServicesController());

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        centerTitle: true,
        title: const Text(
          "Select Services",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.services.length,
                itemBuilder: (context, index) {
                  final service = controller.services[index];
                  final isSelected =
                      controller.selectedServices.contains(service);

                  return Card(
                    color: isSelected ? Colors.lightBlue[100] : Colors.white,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: isSelected
                          ? BorderSide(color: Colors.blue.shade700, width: 2)
                          : BorderSide.none,
                    ),
                    child: ListTile(
                      leading: Obx(() {
                        final isSelected = controller.selectedServices.any(
                            (s) =>
                                s.name == service.name &&
                                s.type == service.type);
                        return Icon(
                          isSelected
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          color:
                              isSelected ? Colors.blue[700] : Colors.grey[400],
                        );
                      }),
                      title: Text(
                        "${service.name} (${service.type})",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[800],
                        ),
                      ),
                      subtitle: Text("Duration: ${service.duration} mins"),
                      trailing: Text(
                        "\$${service.price.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[700],
                        ),
                      ),
                      onTap: () => controller.toggleServiceSelection(service),
                    ),
                  );
                },
              ),
            ),
          ),
          Obx(
            () => controller.selectedServices.isNotEmpty
                ? Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.blueGrey.shade700,
                              side: BorderSide(
                                  color: Colors.blueGrey.shade700, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              minimumSize: const Size.fromHeight(56),
                            ),
                            onPressed: controller.clearSelection,
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[700],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              minimumSize: const Size.fromHeight(56),
                              elevation: 4,
                            ),
                            onPressed: () {
                              Get.toNamed(
                                AppRoutes.confirmation,
                                arguments: controller.selectedServices.toList(),
                              );
                              controller.clearSelection();
                            },
                            child: Obx(
                              () => Text(
                                "Confirm (${controller.selectedServices.length} services, Total: \$${controller.totalPrice.toStringAsFixed(2)})",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
