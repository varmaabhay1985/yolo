import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _switchNotificationValue = true;
  bool _switchSVValue = true;

  final List<ChartData> chartData = [
    ChartData('Dec 12', 35),
    ChartData('Dec 13', 28),
    ChartData('Dec 14', 34),
    ChartData('Dec 14', 32),
    ChartData('Dec 16', 40)
  ];

  final List<ChartData> chartData1 = [
    ChartData('Dec 12', 42),
    ChartData('Dec 13', 24),
    ChartData('Dec 14', 38),
    ChartData('Dec 14', 32),
    ChartData('Dec 16', 50)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.primary,
        title: Image.asset(
          ImageAssets.yoloLogoImage1,
          width: 96,
          height: 33,
          fit: BoxFit.cover,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            AppStrings.settingsText,
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name Surname',
                            style: getBoldStyle(
                              color: ColorManager.hintTextColor,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '23, Male, California',
                            style: getRegularStyle(
                              color: ColorManager.visibilityIconColor,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/createprofilescreen');
                        },
                        child: Container(
                          height: 36,
                          width: 78,
                          decoration: BoxDecoration(
                              color: ColorManager.splashColor1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: ColorManager.splashColor2, width: 1)),
                          child: Center(
                            child: Text(
                              AppStrings.editProfileText,
                              style: getRegularStyle(
                                  color: ColorManager.splashColor2,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.spText,
                        style: getRegularStyle(
                          color: ColorManager.settingsTextColor,
                          fontSize: 14,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                          color: ColorManager.settingsTextIconColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.notificationText,
                        style: getRegularStyle(
                          color: ColorManager.settingsTextColor,
                          fontSize: 14,
                        ),
                      ),
                      CupertinoSwitch(
                        value: _switchNotificationValue,
                        thumbColor: ColorManager.primary,
                        activeColor: ColorManager.splashColor2,
                        onChanged: (value) {
                          setState(() {
                            _switchNotificationValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.svText,
                        style: getRegularStyle(
                          color: ColorManager.settingsTextColor,
                          fontSize: 14,
                        ),
                      ),
                      CupertinoSwitch(
                        value: _switchSVValue,
                        thumbColor: ColorManager.primary,
                        activeColor: ColorManager.splashColor2,
                        onChanged: (value) {
                          setState(() {
                            _switchSVValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  getLineChart(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    AppStrings.prefsText,
                    style: getRegularStyle(
                      color: ColorManager.settingsTextColor,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      getPrefsWidget(AppStrings.homeText),
                      getPrefsWidget(AppStrings.clothText),
                      getPrefsWidget(AppStrings.foodText),
                      getPrefsWidget(AppStrings.assetsText)
                    ],
                  ),
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

  Widget getPrefsWidget(String dt) {
    return Container(
      height: 96,
      width: 80,
      decoration: BoxDecoration(
          color: ColorManager.splashColor1,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border:
              Border.all(color: ColorManager.visibilityIconColor, width: 1.0),
          shape: BoxShape.rectangle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                color: ColorManager.circleColor),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            dt,
            style: getRegularStyle(
              color: ColorManager.splashColor2,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }

  Widget getLineChart() {
    return Material(
      elevation: 6,
      color: ColorManager.splashColor1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: ColorManager.splashColor1,
            borderRadius: const BorderRadius.all(Radius.circular(4))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.lsPMText,
              style: getMediumStyle(
                color: ColorManager.settingsTextColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SfCartesianChart(
                //borderColor: Colors.blue,
                primaryXAxis: const CategoryAxis(
                  //Customize the axis line.
                  axisLine: AxisLine(width: 0),

                  //Grid line customization.
                  majorGridLines: MajorGridLines(width: 0),

                  //Minor grid line customization.

                  //Major tick line customization.
                  majorTickLines: MajorTickLines(size: 0),

                  //Minor tick line customization.

                  //Axis title customization.
                ),
                primaryYAxis: const NumericAxis(
                  //Customize the axis line.
                  axisLine: AxisLine(width: 0),
                  isVisible: false,
                  //Grid line customization.
                  majorGridLines: MajorGridLines(width: 0),

                  //Minor grid line customization.
                  minorGridLines: MinorGridLines(width: 0),

                  //Major tick line customization.
                  majorTickLines: MajorTickLines(size: 0),

                  //Minor tick line customization.
                  minorTickLines: MinorTickLines(size: 0),

                  //Axis title customization.
                ),
                series: <CartesianSeries>[
                  // Renders line chart
                  LineSeries<ChartData, String?>(
                    dataSource: chartData,
                    color: ColorManager.settingsLineGraphColor1,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                  LineSeries<ChartData, String?>(
                    dataSource: chartData1,
                    color: ColorManager.settingsLineGraphColor2,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int y;
}
