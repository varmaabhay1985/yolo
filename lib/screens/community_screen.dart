import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/appbar_widget.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //final bottom = MediaQuery.of(context).viewInsets.bottom;
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
                    height: 45,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: ColorManager.searchBoxColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        Image.asset(
                          ImageAssets.postTextImage,
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: getRegularStyle(
                                color: ColorManager.secondaryColor,
                                fontSize: 14),
                            decoration: InputDecoration(
                              hintText: AppStrings.postText,
                              hintStyle: getRegularStyle(
                                  color: ColorManager.searchBoxTextColor,
                                  fontSize: 14),
                              isDense: true,
                              suffixIcon: Container(
                                height: 45,
                                child: GestureDetector(
                                    child: Icon(
                                      Icons.send,
                                      size: 19,
                                      color: ColorManager.splashColor2,
                                    ),
                                    onTap: () {}),
                              ),
                              fillColor: ColorManager.searchBoxColor,
                              filled: true,
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                              AppStrings.aiText,
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
                              AppStrings.ptText,
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
                    height: 16,
                  ),
                  getPostWidget(),
                  const SizedBox(
                    height: 260,
                  )
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

  Widget getPostWidget() {
    return Material(
      elevation: 6,
      color: ColorManager.splashColor1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: ColorManager.splashColor1,
            borderRadius: const BorderRadius.all(Radius.circular(4))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  ImageAssets.postTextImage,
                  width: 48,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Murali Krishna',
                      style: getBoldStyle(
                        color: ColorManager.splashColor2,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Posted On 23/09/21 at 4:30 pm',
                      style: getRegularStyle(
                          color: ColorManager.secondaryColor, fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.maxFinite,
              height: 143,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.postImage),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "If you find that your fragrance has faded away by lunchtime or you go through perfumes far too quickly, these top tips from the experts at Hairtrade will help your scent last all day long – without the need to spray an entire bottle on yourself. \nIt’s all about knowing where and how to apply fragrance, and how to store it so it retains its quality.",
              style: getRegularStyle(
                color: ColorManager.postTextColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 12,
                  color: ColorManager.postTextIconColor,
                ),
                Text(
                  '4',
                  style: getSemiBoldStyle(
                      color: ColorManager.postTextIconColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.message,
                  size: 12,
                  color: ColorManager.postTextIconColor,
                ),
                Text(
                  '5',
                  style: getSemiBoldStyle(
                      color: ColorManager.postTextIconColor, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Divider(
              color: ColorManager.postTextIconColor,
              thickness: 1,
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 24,
                      color: ColorManager.splashColor2,
                    ),
                    Text(
                      AppStrings.likeText,
                      style: getBoldStyle(
                        color: ColorManager.splashColor2,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message,
                      size: 24,
                      color: ColorManager.splashColor2,
                    ),
                    Text(
                      AppStrings.commText,
                      style: getBoldStyle(
                        color: ColorManager.splashColor2,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 24,
                      color: ColorManager.splashColor2,
                    ),
                    Text(
                      AppStrings.shareText,
                      style: getBoldStyle(
                        color: ColorManager.splashColor2,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
