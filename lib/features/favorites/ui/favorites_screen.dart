import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/di/dependency_injection.dart';
import 'package:quote_generator_mobile_app/core/helpers/extensions.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_button.dart';
import 'package:quote_generator_mobile_app/features/favorites/data/repos/favorites_repo.dart';
import 'package:quote_generator_mobile_app/features/favorites/logic/favorites_controller.dart';
import 'package:quote_generator_mobile_app/features/favorites/ui/widgets/favorites_builder.dart';
import 'package:quote_generator_mobile_app/features/favorites/ui/widgets/search_text_form_field.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavoritesController(getIt<FavoritesRepo>()));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [LightColors.primary, LightColors.primaryVariant],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppButton(
                  borderColor: LightColors.primarySoft,
                  borderRadius: BorderRadius.circular(6.r),
                  backgroundColor: LightColors.primarySoft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: LightColors.textPrimary,
                        size: 25.sp,
                      ),
                      Text(
                        'back_to_home'.tr,
                        style: TextStyles.font26VeryDarkGray,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {
                    context.pop();
                  },
                ),
                verticalSpace(20),
                SearchTextFormField(),
                verticalSpace(20),
                FavoritesBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
