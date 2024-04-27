import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_watch/components/text_style.dart';
import 'package:store_watch/res/colors.dart';
import 'package:store_watch/res/dimens.dart';

import '../../gen/assets.gen.dart';
import '../../res/string.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btmNavHeight = size.height * 0.08;
    return Scaffold(
      body: Stack(
        children: [
          //mainScreen
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: btmNavHeight,
              child: Container(
                color: Colors.blue,
              )),

          //btmNavigationBar
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: AppColors.btmNavColor,
                height: btmNavHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [/*BtmNavItem()*/],
                ),
              )),
        ],
      ),
    );
  }
}

class BtmNavItem extends StatelessWidget {
  String iconSvgPath;
  String iconText;
  bool isActive;

  BtmNavItem(
      {super.key,
      required this.iconSvgPath,
      required this.iconText,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: AppColors.btmNavColor,
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.mini),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconSvgPath,
                colorFilter: ColorFilter.mode(
                    isActive
                        ? AppColors.btmNavActiveItem
                        : AppColors.btmNavInActiveItem,
                    BlendMode.srcIn),
              ),
              const SizedBox(
                height: AppDimens.small,
              ),
              Text(
                iconText,
                style: isActive
                    ? AppTextStyles.btmNavActive
                    : AppTextStyles.btmNavInActive,
              )
            ],
          ),
        ),
      ),
    );
  }
}
