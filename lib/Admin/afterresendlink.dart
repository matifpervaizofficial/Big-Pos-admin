// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/customtext.dart';

class ResendLink extends StatefulWidget {
  const ResendLink({super.key});

  @override
  State<ResendLink> createState() => _ResendLinkState();
}

class _ResendLinkState extends State<ResendLink> {
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
                    "assets/images/verifyemail.png",
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
                Icon(
                  Icons.check_box_outlined  ,
                  size: 100,
                  color: appcolors.gradientGreen,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const CustomText(
                            text: "Check Your Email ✉️",
                            textsize: 24,
                            textcolor: appcolors.greyText,
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
                            "We sent an email to: hello@pixinvent.com \nPlease follow the link inside to continue. If you\n can’t find the email within your Inbox, please\n check your Spam folder.",
                        textsize: 14,
                        textcolor: appcolors.greyText,
                        FontWeight: FontWeight.normal),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 450,
                      height: 50,
                      child: CustomButton(
                        onTap: () {},
                        buttonText: "Back to Profile",
                        textColor: appcolors.white,
                        borderRadius: 10,
                        buttonColor: appcolors.gradientGreen,
                        borderColor: appcolors.gradientGreen,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Didn't receive an email? ",
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: appcolors.greyText),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Resend",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: appcolors.gradientGreen,
                                      letterSpacing: 1)),
                            ],
                          ),
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
