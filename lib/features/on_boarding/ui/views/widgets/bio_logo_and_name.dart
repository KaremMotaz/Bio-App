import 'package:biocode/core/theming/assets_data.dart';
import 'package:biocode/core/theming/colors.dart';
import 'package:biocode/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BioLogoAndName extends StatelessWidget {
  const BioLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsData.bioticsLogo,
          height: 40.h,
          colorFilter: const ColorFilter.mode(
            ColorsManager.mainBlue,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          'Biotics',
          style: TextStyles.font26BlackBold,
        ),
      ],
    );
  }
}
