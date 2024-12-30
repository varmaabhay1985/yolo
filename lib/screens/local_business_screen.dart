import 'package:flutter/material.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/strings_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager.dart';
import 'package:modus_assignment_app/widgets/appbar_widget.dart';
import 'package:modus_assignment_app/widgets/msg_widget.dart';

class LocalBusinessScreen extends StatefulWidget {
  LocalBusinessScreen({super.key});

  @override
  State<LocalBusinessScreen> createState() => _LocalBusinessScreenState();
}

class _LocalBusinessScreenState extends State<LocalBusinessScreen> {
  int? _value = 0;
  List<String> _chipsName = [
    AppStrings.pbText,
    AppStrings.unpbText,
    AppStrings.prdText
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppbarWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  spacing: 7.0,
                  children: List<Widget>.generate(
                    _chipsName.length,
                    (int index) {
                      return ChoiceChip(
                        showCheckmark: false,
                        label: Text(_chipsName[index]),
                        labelStyle: getRegularStyle(
                          color: _value == index
                              ? ColorManager.primary
                              : ColorManager.splashColor2,
                          fontSize: 12.5,
                        ),
                        selectedColor: ColorManager.splashColor2,
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : null;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.filterText,
                      style: getRegularStyle(
                          color: ColorManager.chipTextColor, fontSize: 14),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: _value == 0 || _value == null
                      ? getPaidBizListView()
                      : _value == 1
                          ? getUnPaidBizListView()
                          : getProductBizListView(),
                ),
                const SizedBox(
                  height: 260,
                ),
              ],
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: MsgWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPaidBizListView() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        //padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) {
          return getListViewData(AppStrings.pdText);
        });
  }

  Widget getUnPaidBizListView() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        //padding: const EdgeInsets.symmetric(vertical: 12),
        itemBuilder: (context, index) {
          return getListViewData(AppStrings.unpbText);
        });
  }

  Widget getProductBizListView() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        //padding: const EdgeInsets.symmetric(vertical: 12),
        itemBuilder: (context, index) {
          return getListViewData(AppStrings.prdText);
        });
  }

  Widget getListViewData(String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        elevation: 6,
        color: ColorManager.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          width: double.maxFinite,
          height: 135,
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: const BorderRadius.all(Radius.circular(6))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data,
                    style: getMediumStyle(
                        color: ColorManager.clusterTextColor, fontSize: 12),
                  ),
                  Row(
                    children: [
                      Text(
                        '3',
                        style: getRegularStyle(
                            color: ColorManager.searchBoxTextColor,
                            fontSize: 14),
                      ),
                      Icon(
                        Icons.star,
                        color: ColorManager.starColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Icon(
                        Icons.verified_user,
                        color: ColorManager.splashColor2,
                        size: 24,
                      ),
                      Text(
                        AppStrings.verifyText,
                        style: getRegularStyle(
                          color: ColorManager.searchBoxTextColor,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                AppStrings.bnText,
                style: getMediumStyle(
                  color: ColorManager.splashColor2,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                AppStrings.descText,
                style: getMediumStyle(
                    color: ColorManager.hintTextColor, fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.offerText,
                    style: getRegularStyle(
                      color: ColorManager.hintTextColor,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: ColorManager.secondaryColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "123-43221334",
                        style: getRegularStyle(
                          color: ColorManager.hintTextColor,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
