import 'package:bigpos/colors.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final String hinttext;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final double width;
  const CustomTextformfield({
    Key? key,
    required this.hinttext,
    required this.textInputType,
    required this.textInputAction,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        keyboardType: textInputType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hinttext,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: appcolors.greyText,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: appcolors.greyText,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
