import 'package:flutter/material.dart';
import 'package:store_watch/screens/get_otp_screen.dart';
import 'package:store_watch/screens/mainScreen/main_screen.dart';
import 'package:store_watch/screens/send_otp_screen.dart';

import '../screens/product_list_screen.dart';
import '../screens/product_single_screen.dart';
import '../screens/register_screen.dart';
import 'screen_names.dart';

    // < key   ,   value >
  Map<String, Widget Function(BuildContext)> routes = {
  //ScreenNames.sendSmsScreen: (context) => SendSmsScreen(),
  //ScreenNames.verifyCodeScreen: (context) => VerifyCodeScreen(),
  ScreenNames.root: (context) => SendOtpScreen(),
  ScreenNames.getOtpScreen: (context) => GetOtpScreen(),
  ScreenNames.registerScreen: (context) => RegisterScreen(),
  ScreenNames.mainScreen: (context) => MainScreen(),
  ScreenNames.productListScreen: (context) =>  const ProductListScreen(),
  ScreenNames.productSingleScreen: (context) =>  const ProductSingleScreen(),
};
