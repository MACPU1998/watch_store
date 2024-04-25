import 'package:flutter/cupertino.dart';

extension SizedBoxExtention on double {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );

  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}
