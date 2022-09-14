import 'package:bigpos/Admin/LoginBig.dart';
import 'package:bigpos/Admin/Registerbig.dart';
import 'package:bigpos/Admin/Resetpassbig.dart';
import 'package:bigpos/Admin/afterresendlink.dart';
import 'package:bigpos/Admin/forgotpassbig.dart';
import 'package:bigpos/Admin/login.dart';
import 'package:bigpos/Admin/register.dart';
import 'package:bigpos/Admin/resetpassword.dart';
import 'package:bigpos/Admin/verifyemail.dart';
import 'package:bigpos/Admin/verifyemailbig.dart';
import 'package:flutter/material.dart';

import 'Admin/forgot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResendLink(),
    );
  }
}
