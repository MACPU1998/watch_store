import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_watch/components/extention.dart';
import 'package:store_watch/components/text_style.dart';
import 'package:store_watch/res/dimens.dart';
import 'package:store_watch/route/screen_names.dart';
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
            Padding(
                padding: EdgeInsets.only(
                    left: AppDimens.medium, right: AppDimens.medium),
                child: Image.asset(Assets.png.logoWatch.path)),
            AppDimens.small.height,
            Text(
              AppStrings.otpCodeSendFor.replaceAll(AppStrings.replace, "0912"),
              style: AppTextStyles.title,
            ),
            AppDimens.small.height,
            const Text(
              AppStrings.wrongNumberEditNumber,
              style: AppTextStyles.primaryThemeTextStyle,
            ),
            AppDimens.large.height,
            AppTextField(
                lable: AppStrings.enterVerificationCode,
                hint: AppStrings.hintVerificationCode,
                prefixLable: "02:55",
                controller: _controller),
            MainButton(
              text: AppStrings.next,
              onPressed: () =>Navigator.pushNamed(context, ScreenNames.registerScreen),
            ),
          ],
        ),
      ),
    );
  }
}
