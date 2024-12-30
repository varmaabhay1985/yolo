import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            onPressed: () {
              Navigator.pushNamed(context, '/editprofilescreen');
            },
            icon: Icon(
              Icons.person_pin,
              size: 24,
              color: ColorManager.secondaryColor,
            )),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notificationscreen');
            },
            icon: Icon(
              Icons.notifications,
              size: 24,
              color: ColorManager.secondaryColor,
            ))
      ],
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: SizedBox(
            width: double.maxFinite,
            height: 45,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: TextFormField(
                /*  onTap: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
                        }
                      }, */

                //textAlign: TextAlign.center,

                style: getRegularStyle(
                    color: ColorManager.secondaryColor, fontSize: 14),
                decoration: InputDecoration(
                  hintText: AppStrings.searchText,
                  hintStyle: getRegularStyle(
                      color: ColorManager.searchBoxTextColor, fontSize: 14),
                  isDense: true,
                  prefixIcon: Container(
                    height: 40,
                    child: Icon(
                      Icons.search_outlined,
                      color: ColorManager.searchBoxTextColor,
                      size: 25,
                    ),
                  ),
                  fillColor: ColorManager.searchBoxColor,
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
