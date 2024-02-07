import '../shopping_cart_screen/widgets/productlistsection1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:karuetat_s_application1/core/app_export.dart';
import 'package:karuetat_s_application1/widgets/custom_elevated_button.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage2752x430,
                      height: 52.v,
                      width: 430.h),
                  _buildImageSection(context),
                  SizedBox(height: 13.v),
                  _buildShoppingCartSection(context),
                  SizedBox(height: 18.v),
                  SizedBox(
                      height: 807.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        _buildContinuePaymentSection(context),
                        _buildProductListSection(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildImageSection(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapTwenty(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 9.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.h, vertical: 15.v),
                      decoration: AppDecoration.fillAmber,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            Text("Veg Shop",
                                style: CustomTextStyles.bodyMediumItim15)
                          ]))),
              GestureDetector(
                  onTap: () {
                    onTapNineteen(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 9.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 16.v),
                      decoration: AppDecoration.fillAmber,
                      child: Text("About us ",
                          style: CustomTextStyles.bodyMediumItim15))),
              Container(
                  margin: EdgeInsets.only(bottom: 9.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text("Shop", style: CustomTextStyles.bodyMediumItim15)
                      ])),
              Container(
                  margin: EdgeInsets.only(bottom: 9.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 16.v),
                  decoration: AppDecoration.fillDeepOrangeA,
                  child:
                      Text("Cart", style: CustomTextStyles.bodyMediumItim15)),
              GestureDetector(
                  onTap: () {
                    onTapTwentyThree(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 9.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.v),
                      decoration: AppDecoration.fillAmber,
                      child: Column(children: [
                        SizedBox(height: 10.v),
                        SizedBox(
                            width: 58.h,
                            child: Text("Contract\nus",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyMediumItim15))
                      ]))),
              SizedBox(
                  height: 61.v,
                  width: 66.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 52.v,
                            width: 66.h,
                            decoration:
                                BoxDecoration(color: appTheme.amber700))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 2.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup26),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 26.h,
                                      child: Text("veg shop logo",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.bodySmall12))
                                ])))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildShoppingCartSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 28.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text("Shopping Cart",
                      style: CustomTextStyles.headlineSmall24)),
              Spacer(),
              Container(
                  height: 24.v,
                  width: 57.h,
                  margin: EdgeInsets.only(bottom: 7.v),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 24.v,
                            width: 57.h,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(28.h)))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 2.h, top: 1.v),
                            child: Text("Search",
                                style: CustomTextStyles.bodyLargeItim)))
                  ])),
              Container(
                  height: 24.v,
                  width: 68.h,
                  margin: EdgeInsets.only(left: 11.h, bottom: 7.v),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 24.v,
                            width: 68.h,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(34.h)))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("Manage",
                                style: CustomTextStyles.bodyLargeItim)))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildContinuePaymentSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 280.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage14,
                  height: 280.v,
                  width: 430.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 180.h, right: 19.h, bottom: 98.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("Total: 37.82 Count: 4Item",
                            style: CustomTextStyles.titleLargeItimOnPrimary),
                        SizedBox(height: 10.v),
                        CustomElevatedButton(
                            height: 31.v,
                            width: 160.h,
                            text: "Continue Payment",
                            buttonStyle: CustomButtonStyles.fillGrayTL10,
                            buttonTextStyle: CustomTextStyles.bodyMediumItim15,
                            onPressed: () {
                              onTapContinuePayment(context);
                            },
                            alignment: Alignment.centerRight)
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildProductListSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 175.v),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 24.v);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Productlistsection1ItemWidget();
                })));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTwenty(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapNineteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the contactUsTabContainerScreen when the action is triggered.
  onTapTwentyThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsTabContainerScreen);
  }

  /// Navigates to the paymentDetailScreen when the action is triggered.
  onTapContinuePayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentDetailScreen);
  }
}
