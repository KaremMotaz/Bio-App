import 'package:biocode/core/theming/styles.dart';
import 'package:biocode/features/on_boarding/ui/views/widgets/bio_logo_and_name.dart';
import 'package:biocode/features/on_boarding/ui/views/widgets/begin_learning_button.dart';
import 'package:biocode/features/on_boarding/ui/views/widgets/teacher_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Column(
          children: [
            BioLogoAndName(),
            SizedBox(height: 30.h),
            TeacherImageAndText(),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                children: [
                  Text(
                    "Learn everything from cells to ecosystems\n with Biotics",
                    style: TextStyles.font16GrayMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  BeginLearningButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
