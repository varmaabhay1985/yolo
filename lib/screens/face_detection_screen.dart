import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';

import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/get_button_widget1.dart';

class FaceDetectionScreen extends StatelessWidget {
  const FaceDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 12,
                  color: ColorManager.backIconColor,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageAssets.faceImage,
                    width: 91,
                    height: 91,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  AppStrings.faceText,
                  style: getMediumStyle(
                      color: ColorManager.msgTextColor, fontSize: 14),
                ),
                const SizedBox(
                  height: 80,
                ),
                GetButtonWidget1(
                    onPressed: () {
                      Navigator.pushNamed(context, '/move4screen');
                    },
                    btnText: AppStrings.faceButtonText,
                    btnColor: ColorManager.splashColor2,
                    width: 286,
                    height: 50,
                    st: getMediumStyle(
                        color: ColorManager.primary, fontSize: 14)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
