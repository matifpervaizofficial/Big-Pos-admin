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

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 680,
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
                          text: "Start 30 Days Free Trial  😍 ",
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
                      text: "Make your app management easy and fun!",
                      textsize: 14,
                      textcolor: appcolors.greyText,
                      FontWeight: FontWeight.normal),
                  SizedBox(
                    height: 30,
                  ),
                  const CustomText(
                      text: "Username",
                      textsize: 14,
                      textcolor: appcolors.greyText,
                      FontWeight: FontWeight.normal),
                  const CustomTextformfield(
                      width: 450,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.name,
                      hinttext: "johndoe@gmail.com"),
                  SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                      text: "Email ",
                      textsize: 14,
                      textcolor: appcolors.greyText,
                      FontWeight: FontWeight.normal),
                  const CustomTextformfield(
                      width: 450,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.name,
                      hinttext: "johndoe@gmail.com"),
                  SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                      text: "Password ",
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
                        hintText: "*****************",
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
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Checkbox(
                          activeColor: appcolors.gradientGreen,
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "  I agree to  ",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: appcolors.greyText),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Privacy Policy & Terms",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: appcolors.Primarycolor,
                                    letterSpacing: 1)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 450,
                    height: 50,
                    child: CustomButton(
                      onTap: () {},
                      buttonText: "Sign Up",
                      textColor: appcolors.white,
                      borderRadius: 10,
                      buttonColor: appcolors.gradientGreen,
                      borderColor: appcolors.gradientGreen,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Already Have an Account?  ",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: appcolors.greyText),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Sign in instead",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: appcolors.Primarycolor,
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 1.5, width: 150, color: Colors.black26),
                      Text(
                        "or",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        height: 1.5,
                        width: 150,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterSocialButton(
                        mini: true,
                        onTap: () {},
                        buttonType: ButtonType.github,
                      ),
                      FlutterSocialButton(
                        mini: true,
                        onTap: () {},
                        buttonType: ButtonType.google,
                      ),
                      FlutterSocialButton(
                        mini: true,
                        onTap: () {},
                        buttonType: ButtonType.facebook,
                      ),
                      FlutterSocialButton(
                        mini: true,
                        onTap: () {},
                        buttonType: ButtonType.twitter,
                      ),
                    ],
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
