import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/appbar_widget.dart';
import 'package:modus_assignment_app/widgets/get_button_widget1.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class MoveScreen extends StatelessWidget {
  const MoveScreen({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 175,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                        color: ColorManager.splashColor2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.movText,
                          style: getBoldStyle(
                              color: ColorManager.primary, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Text(
                          AppStrings.movBannerText,
                          style: getMediumStyle(
                              color: ColorManager.bannerTextColor,
                              fontSize: 13),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        GetButtonWidget1(
                            onPressed: () {
                              Navigator.pushNamed(context, '/move2screen');
                            },
                            btnText: AppStrings.movBannerButtonText,
                            btnColor: ColorManager.primary,
                            width: 132,
                            height: 36,
                            st: getMediumStyle(
                                color: ColorManager.splashColor2, fontSize: 14))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    AppStrings.notifyText,
                    style: getRegularStyle(
                      color: ColorManager.hintTextColor,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
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
                              AppStrings.electricityText,
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
                              AppStrings.waterText,
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
                    height: 13,
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
                              AppStrings.internetText,
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
                              AppStrings.bankText,
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
                    height: 13,
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
                      padding: const EdgeInsets.all(12),
                      width: double.maxFinite,
                      height: 155,
                      decoration: BoxDecoration(
                          color: ColorManager.splashColor1,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.rodText,
                            style: getMediumStyle(
                                color: ColorManager.splashColor2, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.dlText,
                                style: getMediumStyle(
                                    color: ColorManager.rodColor, fontSize: 12),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 14,
                                  color: ColorManager.rodColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.erText,
                                style: getMediumStyle(
                                    color: ColorManager.rodColor, fontSize: 12),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 14,
                                  color: ColorManager.rodColor,
                                ),
                              ),
                            ],
                          )
                        ],
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
    );
  }
}
