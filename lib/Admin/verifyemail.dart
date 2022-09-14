import 'package:flutter/material.dart';

import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtext.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 300,
            width: 450,
            color: appcolors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/Logo.png").centered(),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const CustomText(
                          text: "Forgot Password? 🔑",
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
                          "We've sent a link to your email address:\nhello@pixinvent.com Please follow the link inside\nto continue.",
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
                      buttonText: "Skip for Now",
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
            ]),
          ),
        ).pOnly(top: 200, bottom: 200),
      ),
    );
  }
}
