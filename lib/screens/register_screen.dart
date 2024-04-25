import 'package:flutter/material.dart';
import 'package:store_watch/components/extention.dart';
import 'package:store_watch/components/text_style.dart';
import 'package:store_watch/res/dimens.dart';
import 'package:store_watch/res/string.dart';
import 'package:store_watch/route/names.dart';
import 'package:store_watch/widgets/app_text_field.dart';
import 'package:store_watch/widgets/avatar.dart';
import 'package:store_watch/widgets/main_button.dart';

import '../gen/assets.gen.dart';
import '../widgets/appbar_registration.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController _controllerNameLastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarRegistration(size: size),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.large.height,
                  Avatar(),
                  AppTextField(
                      lable: AppStrings.nameLastName,
                      hint: AppStrings.hintNameLastName,
                      controller: _controllerNameLastName),
                  AppTextField(
                      lable: AppStrings.homeNumber,
                      hint: AppStrings.hintHomeNumber,
                      controller: _controllerNameLastName),
                  AppTextField(
                      lable: AppStrings.address,
                      hint: AppStrings.hintAddress,
                      controller: _controllerNameLastName),
                  AppTextField(
                      lable: AppStrings.postalCode,
                      hint: AppStrings.hintPostalCode,
                      controller: _controllerNameLastName),
                  AppTextField(
                    lable: AppStrings.location,
                    hint: AppStrings.hintLocation,
                    controller: _controllerNameLastName,
                    icon: const Icon(Icons.location_on),
                  ),
                  MainButton(
                    text: AppStrings.next,
                    onPressed: () {},
                  ),
                  AppDimens.large.height,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
