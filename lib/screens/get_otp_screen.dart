import 'package:flutter/material.dart';
import 'package:store_watch/components/extention.dart';
import 'package:store_watch/res/dimens.dart';
import 'package:store_watch/widgets/app_text_field.dart';
import 'package:store_watch/widgets/main_button.dart';

import '../gen/assets.gen.dart';
import '../res/string.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});

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
            AppDimens.medium.height,
            Text(AppStrings.otpCodeSendFor
                .replaceAll(AppStrings.replace, "0912")),
            AppDimens.small.height,
            const Text(AppStrings.wrongNumberEditNumber),
            AppDimens.large.height,
            AppTextField(
                lable: AppStrings.enterVerificationCode,
                hint: AppStrings.hintVerificationCode,
                prefixLable: "02:55",
                controller: _controller),
            MainButton(
              text: AppStrings.next,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
