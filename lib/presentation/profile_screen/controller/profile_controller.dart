import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:newyassine_s_application/data/models/me/get_me_resp.dart';
import 'package:newyassine_s_application/data/apiClient/api_client.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  GetMeResp getMeResp = GetMeResp();

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      await this.callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callFetchMe() async {
    try {
      getMeResp = await Get.find<ApiClient>().fetchMe(headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3NzgxOTg3MH0.uDqLLt9IUCaUjLkbw4y_7A6OGS6NX2irkXdJ3-2Ebbs',
      });
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  void _handleFetchMeSuccess() {
    profileModelObj.value.usernameTxt.value =
        getMeResp.data!.username!.toString();
    profileModelObj.value.emailOneTxt.value = getMeResp.data!.email!.toString();
    profileModelObj.value.nameTxt.value = getMeResp.data!.name!.toString();
  }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {}
}
