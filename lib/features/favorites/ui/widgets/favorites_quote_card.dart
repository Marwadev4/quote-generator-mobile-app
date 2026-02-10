import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_button.dart';
import 'package:quote_generator_mobile_app/features/favorites/data/models/favorite_quote_response.dart';
import 'package:quote_generator_mobile_app/features/favorites/logic/favorites_controller.dart';

class FavoritesQuoteCard extends StatelessWidget {
  final FavoriteQuoteResponse quote;

  const FavoritesQuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: LightColors.background,
        borderRadius: BorderRadius.circular(6.r),
      ),
      padding: EdgeInsets.only(
        left: 18.w,
        right: 18.w,
        top: 30.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(quote.quote, style: TextStyles.font26VeryDarkGray),
          verticalSpace(10),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              quote.author,
              style: TextStyles.font22VeryDarkGrayWithOpacity,
            ),
          ),
          verticalSpace(20),
          AppButton(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(6.r),
              bottomRight: Radius.circular(6.r),
            ),
            borderColor: LightColors.primaryVariant,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8.w,
              children: [
                Icon(
                  Icons.favorite,
                  color: LightColors.primaryVariant,
                  size: 30.sp,
                ),
                Text(
                  'remove_from_favorites'.tr,
                  style: TextStyles.font22ModerateViolet,
                ),
              ],
            ),
            onPressed: () {
              Get.find<FavoritesController>().deleteQuote(quote.quote);
            },
          ),
        ],
      ),
    );
  }
}
