import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/di/dependency_injection.dart';
import 'package:quote_generator_mobile_app/core/helpers/extensions.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/routing/routes.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_button.dart';
import 'package:quote_generator_mobile_app/features/home/data/repos/home_repo.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_controller.dart';
import 'package:quote_generator_mobile_app/features/home/ui/widgets/quote_builder.dart';
import 'package:quote_generator_mobile_app/features/home/ui/widgets/view_favorite_quotes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController(getIt<HomeRepo>()));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [LightColors.primary, LightColors.primaryVariant],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ViewFavoriteQuotes(),
            verticalSpace(10),
            QuoteBlocBuilder(),
            verticalSpace(20),
            AppButton(
              borderColor: LightColors.primarySoft,
              borderRadius: BorderRadius.circular(6.r),
              backgroundColor: LightColors.primarySoft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: LightColors.textPrimary,
                    size: 25.sp,
                  ),
                  horizontalSpace(8),
                  Text(
                    'settings'.tr,
                    style: TextStyles.font26VeryDarkGray,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onPressed: () {
                context.pushNamed(Routes.settingsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
