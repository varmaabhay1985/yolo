import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<bool>? notificationSeen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationSeen = List.filled(12, false);
  }

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
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                        child: Text(
                          AppStrings.notificationText,
                          style: getBoldStyle(
                            color: ColorManager.splashColor2,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return getNotificationsList(index);
                      }),
                ),
                const SizedBox(
                  height: 260,
                ),
              ],
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

  Widget getNotificationsList(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          notificationSeen![index] = true;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          height: 70,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: notificationSeen![index]
                  ? ColorManager.primary
                  : ColorManager.notificationCardColor,
              borderRadius: const BorderRadius.all(Radius.circular(3))),
          child: Row(
            children: [
              Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    color: ColorManager.searchBoxColor,
                    shape: BoxShape.rectangle),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Local Business Promotion",
                    style: getBoldStyle(
                        color: ColorManager.hintTextColor, fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Details about the upcoming new offers.",
                    style: getRegularStyle(
                      color: ColorManager.visibilityIconColor,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const Spacer(),
              notificationSeen![index]
                  ? Container()
                  : Icon(
                      Icons.circle,
                      size: 6,
                      color: ColorManager.splashColor2,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
