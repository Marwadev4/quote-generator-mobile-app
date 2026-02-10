import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_text_button.dart';
import 'package:quote_generator_mobile_app/features/home/data/models/quote_response.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_controller.dart';

class FavoriteButton extends StatelessWidget {
  final QuoteResponse quote;

  const FavoriteButton({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final controller = Get.find<HomeController>();
      final isFavorite = controller.favorites.any(
        (fav) => fav.quote == quote.quote,
      );

      return AppButton(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(6.r),
          top: Radius.circular(0),
        ),
        backgroundColor: LightColors.background,
        borderColor: LightColors.primaryVariant,
        onPressed: () {
          controller.insertOrRemoveFromDatabase(quote);
        },
        child: isFavorite
            ? Icon(
                Icons.favorite,
                color: LightColors.primaryVariant,
                size: 30.sp,
              )
            : Icon(
                Icons.favorite_border,
                color: LightColors.primaryVariant,
                size: 30.sp,
              ),
      );
    });
  }
}
