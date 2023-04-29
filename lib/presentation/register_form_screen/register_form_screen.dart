import 'controller/register_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:newyassine_s_application/core/app_export.dart';
import 'package:newyassine_s_application/widgets/custom_button.dart';
import 'package:newyassine_s_application/widgets/custom_icon_button.dart';
import 'package:newyassine_s_application/widgets/custom_text_form_field.dart';
import 'package:newyassine_s_application/data/models/register/post_register_req.dart';
import 'package:newyassine_s_application/data/models/register/post_register_resp.dart';
import 'package:newyassine_s_application/core/constants/role.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterFormScreen extends GetWidget<RegisterFormController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 72,
                          width: 72,
                          variant: IconButtonVariant.FillLightblueA200,
                          shape: IconButtonShape.RoundedBorder16,
                          padding: IconButtonPadding.PaddingAll20,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCloseWhiteA700)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_let_s_get_start".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_create_an_new_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.fullnameController,
                          hintText: "lbl_full_name".tr,
                          margin: getMargin(top: 30),
                          padding: TextFormFieldPadding.PaddingT14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.youremailController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(top: 8),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMail)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 8),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          isObscureText: true),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordagainController,
                          hintText: "lbl_password_again".tr,
                          margin: getMargin(top: 8),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(57),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 20),
                          onTap: () {
                            onTapSignup();
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapTxtHaveanaccount();
                          },
                          child: Padding(
                              padding: getPadding(top: 20, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_have_an_account2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray300,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: TextStyle(
                                            color: ColorConstant.lightBlueA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  Future<void> onTapSignup() async {
    PostRegisterReq postRegisterReq = PostRegisterReq(
      username: controller.youremailController.text,
      password: controller.passwordController.text,
      email: controller.youremailController.text,
      name: controller.fullnameController.text,
      role: Role.user,
    );
    try {
      await controller.callCreateRegister(
        postRegisterReq.toJson(),
      );
      _onOnTapSignUpSuccess();
    } on PostRegisterResp {
      _onOnTapSignUpError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapSignUpSuccess() {
    Get.offNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }

  void _onOnTapSignUpError() {
    Fluttertoast.showToast(
      msg: controller.postRegisterResp.message!.toString(),
    );
  }

  onTapTxtHaveanaccount() {
    Get.offNamed(
      AppRoutes.loginScreen,
    );
  }
}
