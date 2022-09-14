import 'package:flutter/material.dart';

import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtext.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 400,
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
                          "Enter your email and we'll send you instructions to reset your password.",
                      textsize: 14,
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
                      width: 450,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.name,
                      hinttext: "John@gmail.com"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 450,
                    height: 50,
                    child: CustomButton(
                      onTap: () {},
                      buttonText: "Send reset link",
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
                      children: const [
                        Icon(
                          Icons.arrow_left,
                          color: appcolors.gradientGreen,
                        ),
                        CustomText(
                            text: "Back to Login",
                            textsize: 14,
                            textcolor: appcolors.gradientGreen,
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
