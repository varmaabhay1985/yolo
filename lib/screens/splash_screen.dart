import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/widgets/get_button_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ShaderMask(
              shaderCallback: (bound) {
                return LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      ColorManager.splashColor1.withOpacity(0.87),
                      ColorManager.splashColor2.withOpacity(0.87),
                    ],
                    stops: const [
                      0.0,
                      1.0,
                    ]).createShader(bound);
              },
              blendMode: BlendMode.srcOver,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAssets.splashBackgroundImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.yoloLogoImage,
                    width: 180,
                    height: 61,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  GetButtonWidget(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    btnText: AppStrings.signInText,
                    btnColor: ColorManager.splashColor2,
                    btnTextColor: ColorManager.primary,
                    width: 310,
                    height: 50,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GetButtonWidget(
                    onPressed: () {},
                    btnText: AppStrings.signUpText,
                    btnColor: ColorManager.primary,
                    btnTextColor: ColorManager.splashTextColor2,
                    width: 310,
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
