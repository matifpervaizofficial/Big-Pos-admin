// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/customtext.dart';

class LoginBig extends StatefulWidget {
  const LoginBig({super.key});

  @override
  State<LoginBig> createState() => _LoginBigState();
}

class _LoginBigState extends State<LoginBig> {
  bool value = false;

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
                      Image.asset("assets/images/Logo1.png").centered(),
                    ],
                  ).pOnly(left: 20, top: 20),
                  Image.asset(
                    "assets/images/Register.png",
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
                            text: "Welcome to Vuexy! 👋🏻",
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
                            "Please sign-in to your account and start the adventure",
                        textsize: 20,
                        textcolor: appcolors.greyText,
                        FontWeight: FontWeight.normal),
                    SizedBox(
                      height: 30,
                    ),
                    const CustomText(
                        text: "Email ",
                        textsize: 14,
                        textcolor: appcolors.greyText,
                        FontWeight: FontWeight.normal),
                    const CustomTextformfield(
                        width: 452,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.name,
                        hinttext: "johndoe@gmail.com"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                            text: "Password ",
                            textsize: 14,
                            textcolor: appcolors.greyText,
                            FontWeight: FontWeight.normal),
                        GestureDetector(
                          child: const CustomText(
                              text: "forgot Password ",
                              textsize: 14,
                              textcolor: appcolors.Primarycolor,
                              FontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
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
                        CustomText(
                            text: " Remember me",
                            textsize: 14,
                            textcolor: appcolors.greyText,
                            FontWeight: FontWeight.normal)
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
                        buttonText: "Login",
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
                        text: "New on our platform? ",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: appcolors.greyText),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Create an Account",
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
                        Container(
                            height: 1.5, width: 150, color: Colors.black26),
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
