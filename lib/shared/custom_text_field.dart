// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must be immutable
class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Color? hintColor;
  final Color? textFieldColor;
  final double? sizeHint;
  final void Function(String value)? onSubmitted;
  final Widget? prefix;
  final Widget? label;
  final void Function(String value)? onChanged;
  final DataOutlineInputBorder? dataOutlineInputBorder;
  const CustomTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.hintColor,
    this.sizeHint,
    this.prefix,
    this.label,
    this.dataOutlineInputBorder,
    this.textFieldColor,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextField(
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        textDirection: TextDirection.rtl,
        cursorColor: dataOutlineInputBorder?.fillcolor,
        cursorHeight: 20.7.h,
        cursorWidth: 2.3.w,
        //TextStyle
        style: TextStyle(fontSize: 19.sp, color: textFieldColor, height: 1.5),
        controller: controller,
        //Decoration
        decoration: InputDecoration(
          prefixIcon: prefix,
          label: label,
          fillColor: dataOutlineInputBorder?.fillcolor,
          filled: dataOutlineInputBorder?.filled ?? false,
          hintText: hintText,
          //HintStyle
          hintStyle: TextStyle(
            fontSize: sizeHint ?? 15.sp,
            color: hintColor ?? const Color.fromARGB(214, 131, 130, 130),
            fontWeight: FontWeight.bold,
          ),
          //ContentPadding
          contentPadding: const EdgeInsets.only(
            top: 14,
            bottom: 14,
            left: 10,
            right: 12,
          ),
          //EnabledBorder
          enabledBorder: OutLine().Outline_Input_Border(
            color: dataOutlineInputBorder?.fillcolor,
            border: dataOutlineInputBorder?.border,
            width: dataOutlineInputBorder?.width,
          ),
          //FocusedBorder
          focusedBorder: OutLine().Outline_Input_Border(
            color: dataOutlineInputBorder?.fillcolor,
            border: dataOutlineInputBorder?.border,
            width: dataOutlineInputBorder?.width,
          ),
          // ErrorBorder
          errorBorder: OutLine().Outline_Input_Border_erore(
            border: dataOutlineInputBorder?.border,
            width: dataOutlineInputBorder?.width,
          ),
          // FocusedErrorBorder
          focusedErrorBorder: OutLine().Outline_Input_Border_erore(
            border: dataOutlineInputBorder?.border,
            width: dataOutlineInputBorder?.width,
          ),
        ));
  }
}

//class to control the border of text field
class OutLine {
  OutlineInputBorder Outline_Input_Border(
      {Color? color, double? border, double? width}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(border ?? 0),
      borderSide: BorderSide(
          color: color ?? const Color.fromARGB(0, 200, 197, 197),
          width: width ?? 0),
    );
  }

//class to control the border of text field when error
  OutlineInputBorder Outline_Input_Border_erore(
      {double? border, double? width}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(border ?? 0),
      borderSide: BorderSide(color: Colors.red, width: width ?? 0),
    );
  }
}

//class to control the border of text field
class DataOutlineInputBorder {
  final bool? filled;
  final double? border;
  final double? width;
  final Color? fillcolor;
  DataOutlineInputBorder(
      {this.border, this.width, this.fillcolor, this.filled});
}
