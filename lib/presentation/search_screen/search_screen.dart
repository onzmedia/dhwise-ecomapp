import 'controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/widgets/app_bar/appbar_image.dart';
import 'package:newyassine_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:newyassine_s_application/widgets/custom_search_view.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: CustomSearchView(
                    width: getHorizontalSize(291),
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_nike_air_max".tr,
                    margin: getMargin(left: 16),
                    variant: SearchViewVariant.OutlineLightblueA200,
                    padding: SearchViewPadding.PaddingT12,
                    fontStyle: SearchViewFontStyle.PoppinsBold12Indigo90087,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 12, right: 8, bottom: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchLightBlueA200)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(44)),
                    suffix: Container(
                        margin:
                            getMargin(left: 30, top: 12, right: 16, bottom: 12),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgClose20x20)),
                    suffixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(44))),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgUpload24x24,
                      margin: getMargin(all: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.blue50,
                          indent: getHorizontalSize(6)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtLanguage();
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  margin: getMargin(top: 9),
                                  padding: getPadding(
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillWhiteA700,
                                  child: Text("msg_nike_air_max_273".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSearchresult();
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  padding: getPadding(
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillWhiteA700,
                                  child: Text("msg_nike_air_vaporm".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_273".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_274".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_vaporm2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_97".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))))
                    ]))));
  }

  onTapTxtLanguage() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapTxtSearchresult() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
