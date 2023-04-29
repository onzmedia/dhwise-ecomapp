import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/notification_feed_screen/models/notification_feed_model.dart';

class NotificationFeedController extends GetxController {
  Rx<NotificationFeedModel> notificationFeedModelObj =
      NotificationFeedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
