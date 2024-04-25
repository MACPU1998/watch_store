import 'package:flutter/material.dart';
import 'package:store_watch/components/extention.dart';
import 'package:store_watch/res/dimens.dart';
import 'package:store_watch/widgets/app_text_field.dart';
import 'package:store_watch/widgets/main_button.dart';

import '../gen/assets.gen.dart';
import '../res/string.dart';

class SendOtpScreen extends StatelessWidget {
   SendOtpScreen({super.key});

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.logoWatch.path),
            AppDimens.large.height,
            AppDimens.large.height,
            AppTextField(
                lable: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: _controller),
            MainButton(text: AppStrings.next, onPressed: () {

            },)
          ],
        ),
      ),
    );
  }
}
