import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:emby_viwer/gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  final double width;
  final double height;
  const AppLogo({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.images.embyLogo,
      width: width,
      height: height,
    );
  }
}
