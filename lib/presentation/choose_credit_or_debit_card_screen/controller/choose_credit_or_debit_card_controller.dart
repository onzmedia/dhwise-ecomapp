import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/choose_credit_or_debit_card_screen/models/choose_credit_or_debit_card_model.dart';

class ChooseCreditOrDebitCardController extends GetxController {
  Rx<ChooseCreditOrDebitCardModel> chooseCreditOrDebitCardModelObj =
      ChooseCreditOrDebitCardModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
