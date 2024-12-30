import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/resources/styles_manager1.dart';

class GetTextFormFieldWidget1 extends StatefulWidget {
  GetTextFormFieldWidget1(
      {Key? key,
      required this.inputcontroller,
      this.hintText,
      this.obscureField = false,
      this.keyBoardType = TextInputType.text,
      this.fieldActive = true,
      this.autoFocus = false,
      this.validator,
      this.fieldType = "Normal",
      this.onChanged,
      this.inputFormat,
      this.maxLines,
      this.maxLength1})
      : super(key: key);
  final TextEditingController inputcontroller;
  final String? hintText;
  bool obscureField;
  TextInputType keyBoardType;
  bool fieldActive;
  bool autoFocus;
  String? Function(String?)? validator;
  String fieldType;
  List<TextInputFormatter>? inputFormat;
  int? maxLines;
  int? maxLength1;
  void Function(String)? onChanged;

  @override
  State<GetTextFormFieldWidget1> createState() =>
      _GetTextFormFieldWidget1State();
}

class _GetTextFormFieldWidget1State extends State<GetTextFormFieldWidget1> {
  bool vis = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 70,
      child: TextFormField(
        inputFormatters: widget.inputFormat,
        autofocus: widget.autoFocus,
        controller: widget.inputcontroller,
        enabled: widget.fieldActive,
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.maxLength1 ?? null,
        validator: widget.validator,
        onChanged: widget.onChanged,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        /*  onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        }, */
        textAlignVertical: TextAlignVertical.center,
        //textAlign: TextAlign.center,
        obscureText: widget.fieldType == "Pwd" && vis == true
            ? false
            : widget.fieldType == "Pwd" && vis == false
                ? true
                : false,
        keyboardType: widget.keyBoardType,
        style:
            getKarlaBoldStyle(color: ColorManager.hintTextColor, fontSize: 16),
        decoration: InputDecoration(
          //constraints: const BoxConstraints(minHeight: 50),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          /*contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 16,
          ),*/
          hintText: widget.hintText,
          hintStyle: getKarlaBoldStyle(
              color: ColorManager.hintTextColor.withOpacity(.5), fontSize: 16),
          isDense: true,
          suffixIcon: Container(
            height: 70,
            child: GestureDetector(
                child: Icon(
                  Icons.location_on,
                  color: ColorManager.splashColor2,
                  size: 16,
                ),
                onTap: () {
                  setState(() {
                    vis = !vis;
                  });
                }),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorManager.splashColor2),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorManager.splashColor2),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorManager.splashColor2),
          ),
        ),
      ),
    );
  }
}
