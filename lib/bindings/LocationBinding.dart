import 'package:pujapurohit/Utils/Imports.dart';

class LocationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(() => LocationController(),); // here!
    Get.put<AuthController>(AuthController(), permanent: true);

  }
}
