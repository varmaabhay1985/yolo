import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager1.dart';
import 'package:modus_assignment_app/widgets/get_button_widget.dart';
import 'package:modus_assignment_app/widgets/get_textformfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                ImageAssets.yoloLogoImage1,
                height: 47,
                width: 140,
                fit: BoxFit.cover,
              ),
              Image.asset(
                ImageAssets.loginScreenImage,
                width: width,
                height: height * .5,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
              top: height * .2,
              left: 0,
              right: 0,
              height: height - (height * .2),
              child: Container(
                //height: height - 310,
                decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          AppStrings.logInText,
                          style: getKarlaBoldStyle(
                              color: ColorManager.splashColor2, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppStrings.uNameText,
                        style: getKarlaBoldStyle(
                            color: ColorManager.hintTextColor, fontSize: 14),
                      ),
                      GetTextFormFieldWidget(
                        inputcontroller: TextEditingController(),
                        hintText: 'abcd@gmail.com',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppStrings.pwdText,
                        style: getKarlaBoldStyle(
                            color: ColorManager.hintTextColor, fontSize: 14),
                      ),
                      GetTextFormFieldWidget(
                        inputcontroller: TextEditingController(),
                        hintText: '********',
                        obscureField: true,
                        fieldType: "Pwd",
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GetButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, '/navbarscr');
                          },
                          btnText: AppStrings.loginText1,
                          btnColor: ColorManager.splashColor2,
                          btnTextColor: ColorManager.primary),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageAssets.googleLogoImage,
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset(
                            ImageAssets.fbLogoImage,
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.accountExistText,
                            style: getKarlaRegularStyle(
                              color: ColorManager.accountExistTextColor,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            AppStrings.signUpText,
                            style: getKarlaRegularStyle(
                                color: ColorManager.splashColor2, fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
