import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/widgets/app_bar/appbar_image.dart';
import 'package:newyassine_s_application/widgets/app_bar/appbar_title.dart';
import 'package:newyassine_s_application/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft14();
                    }),
                title: AppbarTitle(
                    text: "lbl_profile".tr, margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 36, bottom: 36),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfilepicture72x72,
                                    height: getSize(72),
                                    width: getSize(72),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(36)),
                                    onTap: () {
                                      onTapImgProfilepicture();
                                    }),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 9, bottom: 14),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Obx(() => Text(
                                              controller.profileModelObj.value
                                                  .nameTxt.value,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold14Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5)))),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Obx(() => Text(
                                                  controller.profileModelObj
                                                      .value.usernameTxt.value,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 32),
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 2, bottom: 3),
                                    child: Text("lbl_gender".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("lbl_male".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 3, bottom: 2),
                                child: Text("lbl_birthday".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 2, bottom: 3),
                                child: Text("lbl_12_12_2000".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(left: 16))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMail24x24,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 2, bottom: 3),
                                child: Text("lbl_email".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 4, bottom: 1),
                                child: Obx(() => Text(
                                    controller.profileModelObj.value.emailOneTxt
                                        .value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(left: 16))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 2, bottom: 3),
                                    child: Text("lbl_phone_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("lbl_307_555_0133".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapChangepassword();
                          },
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLock24x24,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 4, bottom: 1),
                                    child: Text("lbl_change_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("msg".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])))
                    ]))));
  }

  onTapImgProfilepicture() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapChangepassword() {
    Get.toNamed(
      AppRoutes.changePasswordScreen,
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}
