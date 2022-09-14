import 'package:bigpos/colors.dart';
import 'package:bigpos/widgets/customButton.dart';
import 'package:bigpos/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/customtext.dart';

class ForgotPassBig extends StatefulWidget {
  const ForgotPassBig({super.key});

  @override
  State<ForgotPassBig> createState() => _ForgotPassBigState();
}

class _ForgotPassBigState extends State<ForgotPassBig> {
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
                    "assets/images/for.png",
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      const CustomText(
                              text: "Forgot Password? 🔑",
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
              ],
            ),
          ),
        ],
      )),
    );
    ;
  }
}
