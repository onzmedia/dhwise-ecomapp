import '../choose_credit_or_debit_card_screen/widgets/slidervolume_item_widget.dart';
import 'controller/choose_credit_or_debit_card_controller.dart';
import 'models/slidervolume_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/widgets/app_bar/appbar_image.dart';
import 'package:newyassine_s_application/widgets/app_bar/appbar_title.dart';
import 'package:newyassine_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:newyassine_s_application/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseCreditOrDebitCardScreen
    extends GetWidget<ChooseCreditOrDebitCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft13();
                    }),
                title: AppbarTitle(
                    text: "lbl_choose_card".tr, margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(left: 16, top: 15, right: 16, bottom: 16),
                      onTap: () {
                        onTapPlus1();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => CarouselSlider.builder(
                          options: CarouselOptions(
                              height: getVerticalSize(190),
                              initialPage: 0,
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                controller.silderIndex.value = index;
                              }),
                          itemCount: controller.chooseCreditOrDebitCardModelObj
                              .value.slidervolumeItemList.value.length,
                          itemBuilder: (context, index, realIndex) {
                            SlidervolumeItemModel model = controller
                                .chooseCreditOrDebitCardModelObj
                                .value
                                .slidervolumeItemList
                                .value[index];
                            return SlidervolumeItemWidget(model);
                          })),
                      Obx(() => Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 16, bottom: 5),
                          child: AnimatedSmoothIndicator(
                              activeIndex: controller.silderIndex.value,
                              count: controller.chooseCreditOrDebitCardModelObj
                                  .value.slidervolumeItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: ColorConstant.lightBlueA200,
                                  dotColor: ColorConstant.blue50,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8)))))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_pay_766_86".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapPay766EightySix();
                })));
  }

  onTapPay766EightySix() {
    Get.toNamed(
      AppRoutes.successScreen,
    );
  }

  onTapArrowleft13() {
    Get.back();
  }

  onTapPlus1() {
    Get.toNamed(
      AppRoutes.addPaymentScreen,
    );
  }
}
