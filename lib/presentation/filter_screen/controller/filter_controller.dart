import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/filter_screen/models/filter_model.dart';
import 'package:flutter/material.dart';

class FilterController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceOneController.dispose();
  }
}
