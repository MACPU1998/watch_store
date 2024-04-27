import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_watch/components/text_style.dart';
import 'package:store_watch/res/colors.dart';
import 'package:store_watch/res/dimens.dart';
import 'package:store_watch/screens/mainScreen/basket_screen.dart';
import 'package:store_watch/screens/mainScreen/home_screen.dart';
import 'package:store_watch/screens/mainScreen/profile_screen.dart';
import 'package:store_watch/widgets/btm_nav_item.dart';

import '../../gen/assets.gen.dart';
import '../../res/string.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();

  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtmNavScreenIndex.home;

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
              child: IndexedStack(
                index: selectedIndex,
                children: const [
                  HomeScreen(),
                  BasketScreen(),
                  ProfileScreen(),
                ],
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
                  children: [
                    BtmNavItem(
                      iconSvgPath: Assets.svg.user,
                      iconText: AppStrings.userProfile,
                      isActive: selectedIndex==BtmNavScreenIndex.profile,
                      onTab:()=> btmNavOnPressed(index: BtmNavScreenIndex.profile),
                    ),
                    BtmNavItem(
                      iconSvgPath: Assets.svg.home,
                      iconText: AppStrings.basket,
                      isActive: selectedIndex==BtmNavScreenIndex.basket,
                      onTab:()=> btmNavOnPressed(index: BtmNavScreenIndex.basket),
                    ),
                    BtmNavItem(
                      iconSvgPath: Assets.svg.home,
                      iconText: AppStrings.home,
                      isActive: selectedIndex==BtmNavScreenIndex.home,
                      onTab:()=> btmNavOnPressed(index: BtmNavScreenIndex.home),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}
