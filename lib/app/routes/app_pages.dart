import 'package:cleopatra/modules/confirmation/confirmation_binding.dart';
import 'package:cleopatra/modules/confirmation/confirmation_view.dart';
import 'package:cleopatra/modules/services/service_binding.dart';
import 'package:cleopatra/modules/services/service_view.dart';
import 'package:get/get.dart';
import '../../modules/splash/splash_binding.dart';
import '../../modules/splash/splash_view.dart';



class AppPages {
  static final pages = [
    GetPage(
      name: '/splash',
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: '/services',
      page: () => const ServicesView(),
      binding: ServicesBinding(),
    ),
    GetPage(
      name: '/confirmation',
      page: () => const ConfirmationView(),
      binding: ConfirmationBinding(),
    ),
  ];
}