import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/get_textformfield_widget.dart';
import 'package:modus_assignment_app/widgets/get_textformfield_widget1.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
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
                        Expanded(
                          child: Center(
                            child: Text(
                              AppStrings.createProfileText,
                              style: getBoldStyle(
                                color: ColorManager.splashColor2,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          color: ColorManager.photoColor,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.photo_camera,
                          color: ColorManager.splashColor1,
                          size: 50,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    GetTextFormFieldWidget(
                      inputcontroller: TextEditingController(),
                      hintText: AppStrings.nameText,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GetTextFormFieldWidget(
                      inputcontroller: TextEditingController(),
                      hintText: AppStrings.ageText,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GetTextFormFieldWidget(
                      inputcontroller: TextEditingController(),
                      hintText: AppStrings.genderText,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GetTextFormFieldWidget1(
                      inputcontroller: TextEditingController(),
                      hintText: AppStrings.alText,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        child: Text(
                          AppStrings.nsText,
                          style: getSemiBoldStyle(
                              color: ColorManager.splashColor2, fontSize: 14),
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
}
