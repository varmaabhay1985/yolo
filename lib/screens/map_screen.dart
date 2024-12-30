import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/assets_manager.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 55),
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
                            AppStrings.scText,
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
                    height: 25,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 70,
                    child: TextFormField(
                      controller: TextEditingController(),

                      textAlignVertical: TextAlignVertical.center,
                      //textAlign: TextAlign.center,

                      style: getBoldStyle(
                          color: ColorManager.hintTextColor, fontSize: 16),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorManager.searchBoxColor,
                        hintText: AppStrings.scText,
                        hintStyle: getMediumStyle(
                            color: ColorManager.hintTextColor.withOpacity(.5),
                            fontSize: 16),
                        isDense: true,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: ColorManager.visibilityIconColor,
                          size: 16,
                        ),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0),
                            borderRadius: BorderRadius.circular(24)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0),
                            borderRadius: BorderRadius.circular(24)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 0),
                            borderRadius: BorderRadius.circular(24)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  getMap(),
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
      ),
    );
  }

  Widget getMap() {
    return Container(
      height: 410,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        child: FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(35.505733, 23.427344),
              initialZoom: 4.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(35.505733, 23.427344),
                    child: Image.asset(
                      ImageAssets.marker1Image,
                    ),
                  ),
                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(30.166754, 24.109758),
                    child: Image.asset(
                      ImageAssets.marker2Image,
                    ),
                  ),
                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(25.166754, 22.109758),
                    child: Image.asset(
                      ImageAssets.marker3Image,
                    ),
                  ),
                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(40.166754, 17.109758),
                    child: Image.asset(
                      ImageAssets.marker4Image,
                    ),
                  ),
                  Marker(
                    width: 50,
                    height: 50,
                    point: LatLng(38.166754, 36.109758),
                    child: Image.asset(
                      ImageAssets.marker4Image,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
