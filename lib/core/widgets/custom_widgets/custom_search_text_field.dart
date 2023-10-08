import 'package:flutter/material.dart';

import '../../../constents.dart';
import '../../utils/app_colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.hintText,
    this.onChange,
  });

  final String hintText;

  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange, //if i want to edit note
      cursorColor: AppColors.whiteColor, //color of cursor
      textAlign: TextAlign.left, //place of text
      style: const TextStyle(
        color: AppColors.whiteColor, // color of typing text
      ),
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Opacity(
            opacity: 0.8,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
        ),
        suffixIconColor: AppColors.whiteColor,
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
        border: rounderBorder(color: AppColors.whiteColor.withOpacity(0.8)),
        enabledBorder:
            rounderBorder(color: AppColors.whiteColor.withOpacity(0.8)),
        focusedBorder:
            rounderBorder(color: AppColors.orangeColor.withOpacity(0.7)),
      ),
    );
  }

  OutlineInputBorder rounderBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(kBorderRadiusValue),
      borderSide: BorderSide(color: color!),
    );
  }
}
