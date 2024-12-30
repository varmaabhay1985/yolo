import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/get_button_widget1.dart';

class Move4Screen extends StatelessWidget {
  const Move4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          ImageAssets.yoloLogoImage1,
          width: 96,
          height: 33,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_pin,
                size: 24,
                color: ColorManager.secondaryColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 24,
                color: ColorManager.secondaryColor,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 12,
                          color: ColorManager.backIconColor,
                        )),
                  ),
                  /* SizedBox(
                    width: width / 2 - 80,
                  ), */
                  Expanded(
                    child: Center(
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: ColorManager.splashColor2,
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: ColorManager.primary,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                AppStrings.addressChangeText,
                style: getBoldStyle(
                  color: ColorManager.msgTextColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              getCardDetailsData(
                  AppStrings.address1Text, AppStrings.address1SubText),
              const SizedBox(
                height: 12,
              ),
              getCardDetailsData(
                  AppStrings.address2Text, AppStrings.address2SubText),
              const SizedBox(
                height: 12,
              ),
              getCardDetailsData(
                  AppStrings.address3Text, AppStrings.address1SubText),
              const SizedBox(
                height: 12,
              ),
              getCardDetailsData(
                  AppStrings.address4Text, AppStrings.address1SubText),
              const SizedBox(
                height: 12,
              ),
              getCardDetailsData(
                  AppStrings.address5Text, AppStrings.address1SubText),
              const SizedBox(
                height: 35,
              ),
              GetButtonWidget1(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mapscreen');
                  },
                  btnText: AppStrings.addressClusterText,
                  btnColor: ColorManager.splashColor2,
                  width: 286,
                  height: 50,
                  st: getMediumStyle(
                      color: ColorManager.primary, fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCardDetailsData(String data1, String data2) {
    return Material(
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
        decoration: BoxDecoration(
            color: ColorManager.splashColor1,
            borderRadius: const BorderRadius.all(Radius.circular(4))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: CircleAvatar(
                radius: 4,
                backgroundColor: ColorManager.circleColor,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data1,
                  style: getMediumStyle(
                      color: ColorManager.msgTextColor, fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data2,
                  style: getRegularStyle(
                      color: ColorManager.addressSubTextColor, fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
