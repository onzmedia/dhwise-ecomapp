import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/review_product_screen/models/review_product_model.dart';

class ReviewProductController extends GetxController {
  Rx<ReviewProductModel> reviewProductModelObj = ReviewProductModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
