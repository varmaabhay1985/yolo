import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/appbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:modus_assignment_app/widgets/get_button_widget1.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class LocalCouncilScreen extends StatelessWidget {
  const LocalCouncilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppbarWidget(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: ColorManager.splashColor1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        border: Border.all(
                            color: ColorManager.splashColor2, width: 1)),
                    child: Center(
                      child: Text(
                        AppStrings.c1Text,
                        style: getRegularStyle(
                            color: ColorManager.splashColor2, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: ColorManager.splashColor1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        border: Border.all(
                            color: ColorManager.splashColor2, width: 1)),
                    child: Center(
                      child: Text(
                        AppStrings.c2Text,
                        style: getRegularStyle(
                            color: ColorManager.splashColor2, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: ColorManager.splashColor1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        border: Border.all(
                            color: ColorManager.splashColor2, width: 1)),
                    child: Center(
                      child: Text(
                        AppStrings.c3Text,
                        style: getRegularStyle(
                            color: ColorManager.splashColor2, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CarouselSlider(
                    items: [
                      getCarouselSliderWidget(0),
                      getCarouselSliderWidget(1),
                      getCarouselSliderWidget(2),
                    ],
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 11 / 5,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {}),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Material(
                    elevation: 6,
                    color: ColorManager.splashColor1,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 95,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: ColorManager.splashColor1,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.planText,
                                style: getMediumStyle(
                                  color: ColorManager.clusterTextColor,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                AppStrings.costText + "123\$",
                                style: getRegularStyle(
                                  color: ColorManager.hintTextColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            AppStrings.subsPlanText,
                            style: getMediumStyle(
                              color: ColorManager.splashColor2,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            AppStrings.descText,
                            style: getRegularStyle(
                              color: ColorManager.hintTextColor,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Material(
                    elevation: 6,
                    color: ColorManager.splashColor1,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 95,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: ColorManager.splashColor1,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.planText,
                                style: getMediumStyle(
                                  color: ColorManager.clusterTextColor,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                AppStrings.costText + "123\$",
                                style: getRegularStyle(
                                  color: ColorManager.hintTextColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            AppStrings.subsPlanText2,
                            style: getMediumStyle(
                              color: ColorManager.splashColor2,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            AppStrings.descText,
                            style: getRegularStyle(
                              color: ColorManager.hintTextColor,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: width / 2,
                          decoration: BoxDecoration(
                              color: ColorManager.splashColor1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: ColorManager.splashColor2, width: 1)),
                          child: Center(
                            child: Text(
                              AppStrings.clpText,
                              style: getRegularStyle(
                                  color: ColorManager.splashColor2,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: width / 2,
                          decoration: BoxDecoration(
                              color: ColorManager.splashColor1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: ColorManager.splashColor2, width: 1)),
                          child: Center(
                            child: Text(
                              AppStrings.ctpText,
                              style: getRegularStyle(
                                  color: ColorManager.splashColor2,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 260,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 13),
              child: MsgWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCarouselSliderWidget(int pos) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 151,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: ColorManager.splashColor2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.obText,
                style: getBoldStyle(color: ColorManager.primary, fontSize: 14),
              ),
              DotsIndicator(
                  dotsCount: 3,
                  position: pos,
                  decorator: DotsDecorator(
                    shape: RoundedRectangleBorder(
                        side:
                            BorderSide(color: ColorManager.primary, width: .8),
                        borderRadius: BorderRadius.circular(9)),
                    color: Colors.transparent,
                    activeColor: ColorManager.primary,
                    size: const Size.square(9.0),
                    activeSize: const Size.square(9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ))
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            AppStrings.bannerText,
            style: getMediumStyle(
                color: ColorManager.bannerTextColor, fontSize: 13),
          ),
          const SizedBox(
            height: 14,
          ),
          GetButtonWidget1(
              onPressed: () {},
              btnText: AppStrings.bannerButtonText,
              btnColor: ColorManager.primary,
              width: 116,
              height: 36,
              st: getMediumStyle(
                  color: ColorManager.splashColor2, fontSize: 14))
        ],
      ),
    );
  }
}
