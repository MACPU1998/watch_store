
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';
import '../res/string.dart';

class AppBarRegistration extends StatelessWidget implements PreferredSizeWidget{
  const AppBarRegistration({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * 0.1),
      child: Row(
        children: [
          IconButton(onPressed: ()=>Navigator.pop(context), icon: SvgPicture.asset(Assets.svg.back)),
          const Text(AppStrings.register,style: AppTextStyles.title,)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(size.height*0.1);
}
