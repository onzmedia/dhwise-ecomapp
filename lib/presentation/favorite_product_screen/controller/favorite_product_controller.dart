import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/favorite_product_screen/models/favorite_product_model.dart';

class FavoriteProductController extends GetxController {
  Rx<FavoriteProductModel> favoriteProductModelObj = FavoriteProductModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
