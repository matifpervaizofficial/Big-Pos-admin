// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/customtext.dart';

class ResetPassBig extends StatefulWidget {
  const ResetPassBig({super.key});

  @override
  State<ResetPassBig> createState() => _ResetPassBigState();
}

class _ResetPassBigState extends State<ResetPassBig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: appcolors.background,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/Logo.png").centered(),
                    ],
                  ).pOnly(left: 20, top: 20),
                  Image.asset(
                    "assets/images/resetpas.png",
                    height: 600,
                    fit: BoxFit.cover,
                  ).pSymmetric(h: 100, v: 200),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    const CustomText(
                            text: "Reset Password 🔐 ",
                            textsize: 24,
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
                            "Your new password must be different \nfrom previously used passwords",
                        textsize: 20,
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
              ],
            ),
          ),
        ],
      )),
    );
  }
}
