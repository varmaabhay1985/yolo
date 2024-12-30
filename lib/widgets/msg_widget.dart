import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';

class MsgWidget extends StatelessWidget {
  const MsgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      color: ColorManager.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          side: BorderSide(color: ColorManager.msgTextBorderColor, width: 1)),
      child: Container(
        padding: const EdgeInsets.all(9),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            border:
                Border.all(color: ColorManager.msgTextBorderColor, width: 1)),
        child: Column(
          children: [
            Text(
              AppStrings.helpText,
              style: getSemiBoldStyle(
                color: ColorManager.msgTextColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: ColorManager.searchBoxColor,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints(maxHeight: 200),
                    decoration: BoxDecoration(
                        color: ColorManager.searchBoxColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: TextFormField(
                      maxLines: null,
                      style: getRegularStyle(
                          color: ColorManager.msgTextFieldColor, fontSize: 14),
                      decoration: InputDecoration(
                        //constraints: const BoxConstraints(minHeight: 50),

                        fillColor: ColorManager.searchBoxColor,
                        filled: true,
                        hintText: AppStrings.msgModusText,
                        hintStyle: getRegularStyle(
                            color:
                                ColorManager.msgTextFieldColor.withOpacity(.8),
                            fontSize: 16),
                        isDense: true,

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: -35,
                        child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.attach_file_outlined,
                              size: 24,
                              color: ColorManager.msgTextFieldIconColor,
                            )),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.language_outlined,
                            size: 24,
                            color: ColorManager.msgTextFieldIconColor,
                          )),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.graphic_eq_outlined,
                            size: 24,
                            color: ColorManager.msgTextFieldIconColor,
                          )),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                        color: ColorManager.msgTextFieldColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageAssets.clusterImage,
                        width: 11.25,
                        height: 11.25,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        AppStrings.clusterInfoText,
                        style: getRegularStyle(
                            color: ColorManager.msgTextFieldColor,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                        color: ColorManager.msgTextFieldColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageAssets.bizImage,
                        width: 11.25,
                        height: 11.25,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        AppStrings.bizText,
                        style: getRegularStyle(
                            color: ColorManager.msgTextFieldColor,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                        color: ColorManager.msgTextFieldColor, width: 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageAssets.councilImage,
                        width: 11.25,
                        height: 11.25,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        AppStrings.councilText,
                        style: getRegularStyle(
                            color: ColorManager.msgTextFieldColor,
                            fontSize: 14),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                AppStrings.copyRightText,
                style: getRegularStyle(
                    color: ColorManager.copyrightTextColor, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
