import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/appbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:modus_assignment_app/widgets/get_button_widget.dart';
import 'package:modus_assignment_app/widgets/get_button_widget1.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:math' as math;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                      height: 24,
                    ),
                    Material(
                      elevation: 6,
                      color: ColorManager.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: double.maxFinite,
                        height: 135,
                        decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.clusterText,
                              style: getMediumStyle(
                                color: ColorManager.clusterTextColor,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              AppStrings.clusterNameText,
                              style: getMediumStyle(
                                color: ColorManager.splashColor2,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: getChipWidget(width / 2, AppStrings.lbText)),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                            child: getChipWidget(
                                width / 2, AppStrings.servicesText)),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child:
                                getChipWidget(width / 2, AppStrings.offerText)),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                            child: getChipWidget(width / 2, AppStrings.cmText)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 6,
                      color: ColorManager.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Container(
                        height: 350,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: TableCalendar(
                          firstDay: DateTime.utc(1900, 10, 16),
                          lastDay: DateTime.utc(2090, 3, 14),
                          focusedDay: DateTime.now(),
                        ),
                      ),
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
                AppStrings.discText,
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

  Widget getChipWidget(double width, String data) {
    return Material(
      elevation: 6,
      color: ColorManager.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Container(
        height: 42,
        width: width,
        decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        child: Center(
          child: Text(
            data,
            style: getMediumStyle(
              color: ColorManager.chipTextColor,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
