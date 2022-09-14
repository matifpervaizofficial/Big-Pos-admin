// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtext.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 500,
            width: 450,
            color: appcolors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Image.asset("assets/images/Logo.png").centered(),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const CustomText(
                          text: "Reset Password 🔐 ",
                          textsize: 16,
                          textcolor: appcolors.black,
                          FontWeight: FontWeight.bold)
                      .pSymmetric(h: 40)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text:
                          "Your new password must be different \n from previously used passwords",
                      textsize: 14,
                      textcolor: appcolors.greyText,
                      FontWeight: FontWeight.normal),
                  SizedBox(
                    height: 30,
                  ),
                  const CustomText(
                      text: "New Password ",
                      textsize: 14,
                      textcolor: appcolors.greyText,
                      FontWeight: FontWeight.normal),
                  const CustomTextformfield(
                      width: 450,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.name,
                      hinttext: "Password"),
                  SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                      text: "Confirm Password ",
                      textsize: 14,
                      textcolor: appcolors.greyText,
                      FontWeight: FontWeight.normal),
                  Container(
                    width: 450,
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 450,
                    height: 50,
                    child: CustomButton(
                      onTap: () {},
                      buttonText: "Set New Password",
                      textColor: appcolors.white,
                      borderRadius: 10,
                      buttonColor: appcolors.gradientGreen,
                      borderColor: appcolors.gradientGreen,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_left),
                        CustomText(
                            text: "Back to Login",
                            textsize: 14,
                            textcolor: appcolors.Primarycolor,
                            FontWeight: FontWeight.normal)
                      ],
                    ),
                  )
                ],
              ).pSymmetric(h: 40),
            ]),
          ),
        ).pOnly(top: 200, bottom: 200),
      ),
    );
  }
}
