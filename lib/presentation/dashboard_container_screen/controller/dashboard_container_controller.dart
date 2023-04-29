import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/dashboard_container_screen/models/dashboard_container_model.dart';
import 'package:newyassine_s_application/widgets/custom_bottom_bar.dart';

class DashboardContainerController extends GetxController {
  var token = Get.arguments[NavigationArgs.token];

  var id = Get.arguments[NavigationArgs.id];

  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
