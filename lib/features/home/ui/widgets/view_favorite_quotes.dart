import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/helpers/extensions.dart';
import 'package:quote_generator_mobile_app/core/routing/routes.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_button.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_controller.dart';

class ViewFavoriteQuotes extends StatelessWidget {
  const ViewFavoriteQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppButton(
          borderColor: ColorsManager.verySoftViolet,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(6.r),
            bottom: Radius.circular(0),
          ),
          backgroundColor: ColorsManager.verySoftViolet,
          child: Text(
            'Click here to view Favorite Quotes',
            style: TextStyles.font26VeryDarkGray,
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            context.pushNamed(Routes.favoritesScreen);
          },
        ),
        Positioned(
          top: -10.h,
          right: -10.w,
          child: CircleAvatar(
            radius: 16.r,
            backgroundColor: ColorsManager.veryDarkGray,
            child: GetBuilder<HomeController>(
              builder:
                  (controller) => Obx(
                    () =>
                        controller.isLoading.value
                            ? Text('...', style: TextStyles.font22White)
                            : Text(
                              controller.favorites.length.toString(),
                              style: TextStyles.font22White,
                            ),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
