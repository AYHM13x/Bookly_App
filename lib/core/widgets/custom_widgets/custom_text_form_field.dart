// ignore_for_file: must_be_immutable

import 'package:bookly_app/constents.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.oldValue,
    this.onChange,
  });

  final String hintText;
  final int maxLines;
  final void Function(String)? onChange;
  final void Function(String?)? onSaved;
  final String? oldValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: oldValue, //if i want to edit note show current value
      onSaved: onSaved, //if i want to add note i want to save value
      onChanged: onChange, //if i want to edit note
      validator: (data) {
        if ((data?.isEmpty ?? true)) {
          return "field is required";
        } else {
          return null;
        }
      },
      cursorColor: AppColors.whiteColor, //color of cursor
      textAlign: TextAlign.left, //place of text
      maxLines: maxLines, //max of empty lines
      style: const TextStyle(
        color: AppColors.whiteColor, // color of typing text
      ),
      decoration: InputDecoration(
        //padding of content
        contentPadding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 20.0,
        ),
        hintText: hintText, //hint to user what field talking about
        hintStyle: const TextStyle(
          color: AppColors.greyColor,
        ),
        //border of text field
        border: rounderBorder(color: AppColors.whiteColor),
        enabledBorder: rounderBorder(color: AppColors.whiteColor),
        focusedBorder: rounderBorder(color: AppColors.lightBlueColor),
      ),
    );
  }

  OutlineInputBorder rounderBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(kBorderRadiusValue),
      borderSide: BorderSide(color: color),
    );
  }
}
