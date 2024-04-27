
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../res/colors.dart';
import '../res/dimens.dart';

class BtmNavItem extends StatelessWidget {
  String iconSvgPath;
  String iconText;
  bool isActive;
  void Function() onTab;

  BtmNavItem({
    super.key,
    required this.iconSvgPath,
    required this.iconText,
    required this.isActive,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
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
