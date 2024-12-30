import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/screens/community_screen.dart';
import 'package:modus_assignment_app/screens/home_screen.dart';
import 'package:modus_assignment_app/screens/local_business_screen.dart';
import 'package:modus_assignment_app/screens/local_council_screen.dart';
import 'package:modus_assignment_app/screens/move_screen.dart';

class BottomNavbarMenuWidget extends StatefulWidget {
  BottomNavbarMenuWidget({Key? key, this.selectedIndex, this.flag = false})
      : super(key: key);
  int? selectedIndex;
  bool? flag;

  @override
  State<BottomNavbarMenuWidget> createState() => _BottomNavbarMenuWidgetState();
}

class _BottomNavbarMenuWidgetState extends State<BottomNavbarMenuWidget> {
  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      _currentPage = _buildBody[index];
      if (index == 2) {
        widget.flag = true;
      } else
        widget.flag = false;
    });
  }

  Widget? _currentPage;

  Widget getIcon(String assetName, int num) {
    return SvgPicture.asset(
      assetName,
      width: 18,
      height: 18,
      colorFilter: ColorFilter.mode(
          widget.selectedIndex == num
              ? ColorManager.splashColor2
              : ColorManager.chipTextColor,
          BlendMode.srcIn),
    );
  }

  final _buildBody = <Widget>[
    CommunityScreen(),
    HomeScreen(),
    MoveScreen(),
    LocalBusinessScreen(),
    LocalCouncilScreen()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _currentPage = _buildBody[widget.selectedIndex!];
    //print(_currentIndex);
    //print(globals.pageNav);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.selectedIndex,
        children: _buildBody,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 16,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: getIcon(ImageAssets.communityNavImage, 0),
            label: AppStrings.communityText,
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 18,
            ),
            label: AppStrings.homeText,
          ),
          BottomNavigationBarItem(
            icon: getIcon(ImageAssets.moveNavImage, 2),
            label: AppStrings.moveText,
          ),
          BottomNavigationBarItem(
            icon: getIcon(ImageAssets.lbImage, 3),
            label: AppStrings.lbNavText,
          ),
          BottomNavigationBarItem(
            icon: getIcon(ImageAssets.lcImage, 4),
            label: AppStrings.lcText,
          ),
        ],
        backgroundColor: ColorManager.primary,
        unselectedItemColor: ColorManager.chipTextColor,
        selectedItemColor: ColorManager.splashColor2,
        selectedLabelStyle:
            getMediumStyle(color: ColorManager.splashColor2, fontSize: 10),
        unselectedLabelStyle:
            getMediumStyle(color: ColorManager.chipTextColor, fontSize: 10),
        currentIndex: widget.selectedIndex!,
        onTap: _onItemTapped,
      ),
    );
  }
}
