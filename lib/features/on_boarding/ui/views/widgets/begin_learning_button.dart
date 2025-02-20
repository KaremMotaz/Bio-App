import 'package:biocode/core/routing/routes.dart';
import 'package:biocode/core/theming/colors.dart';
import 'package:biocode/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BeginLearningButton extends StatelessWidget {
  const BeginLearningButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).push(Routes.signInView);
      },
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(
            const Size(double.infinity, 52),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          )),
      child: Text(
        "Begin Learning",
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
