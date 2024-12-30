import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/appbar_widget.dart';

class Move2Screen extends StatefulWidget {
  Move2Screen({super.key});

  @override
  State<Move2Screen> createState() => _Move2ScreenState();
}

class _Move2ScreenState extends State<Move2Screen> {
  bool? c1 = false, c2 = false, c3 = false, c4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppbarWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        color: ColorManager.splashColor2,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 88,
                        child: Divider(
                          thickness: 1,
                          height: 1,
                          color: ColorManager.msgTextFieldColor,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.circle,
                        color: ColorManager.circleColor,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 88,
                        child: Divider(
                          thickness: 1,
                          height: 1,
                          color: ColorManager.msgTextFieldColor,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.circle,
                        color: ColorManager.circleColor,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 88,
                        child: Divider(
                          thickness: 1,
                          height: 1,
                          color: ColorManager.msgTextFieldColor,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.circle,
                        color: ColorManager.circleColor,
                        size: 12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.questText,
                        style: getRegularStyle(
                            color: ColorManager.secondaryColor, fontSize: 12),
                      ),
                      Text(
                        AppStrings.addressDetailsText,
                        style: getRegularStyle(
                            color: ColorManager.secondaryColor, fontSize: 12),
                      ),
                      Text(
                        AppStrings.confirmText,
                        style: getRegularStyle(
                            color: ColorManager.secondaryColor, fontSize: 12),
                      ),
                      Text(
                        AppStrings.fdText,
                        style: getRegularStyle(
                            color: ColorManager.secondaryColor, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                AppStrings.actionText,
                style: getMediumStyle(
                  color: ColorManager.msgTextColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/move3screen');
                },
                child: Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: ColorManager.splashColor1,
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                          color: ColorManager.msgTextFieldIconColor, width: 1)),
                  child: Center(
                    child: Text(
                      AppStrings.movingOutText,
                      style: getRegularStyle(
                          color: ColorManager.msgTextColor, fontSize: 14),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: ColorManager.splashColor1,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                        color: ColorManager.msgTextFieldIconColor, width: 1)),
                child: Center(
                  child: Text(
                    AppStrings.stText,
                    style: getRegularStyle(
                        color: ColorManager.msgTextColor, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: ColorManager.splashColor1,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                        color: ColorManager.msgTextFieldIconColor, width: 1)),
                child: Center(
                  child: Text(
                    AppStrings.korText,
                    style: getRegularStyle(
                        color: ColorManager.msgTextColor, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                AppStrings.quest2Text,
                style: getMediumStyle(
                  color: ColorManager.msgTextColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Checkbox(
                      value: c1,
                      activeColor: ColorManager.msgTextFieldIconColor,
                      checkColor: ColorManager.primary,
                      onChanged: (bool? newValue) {
                        setState(() {
                          c1 = newValue!;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.option1Text,
                    style: getRegularStyle(
                      color: ColorManager.checkBoxOptionsTextColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: c2,
                      activeColor: ColorManager.msgTextFieldIconColor,
                      checkColor: ColorManager.primary,
                      onChanged: (bool? newValue) {
                        setState(() {
                          c2 = newValue!;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.option2Text,
                    style: getRegularStyle(
                      color: ColorManager.checkBoxOptionsTextColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: c3,
                      activeColor: ColorManager.msgTextFieldIconColor,
                      checkColor: ColorManager.primary,
                      onChanged: (bool? newValue) {
                        setState(() {
                          c3 = newValue!;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.option3Text,
                    style: getRegularStyle(
                      color: ColorManager.checkBoxOptionsTextColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: c4,
                      activeColor: ColorManager.msgTextFieldIconColor,
                      checkColor: ColorManager.primary,
                      onChanged: (bool? newValue) {
                        setState(() {
                          c4 = newValue!;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.option4Text,
                    style: getRegularStyle(
                      color: ColorManager.checkBoxOptionsTextColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
