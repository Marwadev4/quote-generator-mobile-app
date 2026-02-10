import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_text_button.dart';
import 'package:quote_generator_mobile_app/features/home/data/models/quote_response.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_controller.dart';
import 'package:quote_generator_mobile_app/features/home/ui/widgets/favorite_button.dart';

class QuoteCard extends StatelessWidget {
  final QuoteResponse quote;

  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: [
            Expanded(
              flex: 3,
              child: AppButton(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(6.r),
                  top: Radius.circular(0),
                ),
                backgroundColor: LightColors.primaryVariant,
                borderColor: Colors.white,
                onPressed: () {
                  Get.find<HomeController>().getRandomQuote();
                },
                child: Text(
                  'generate_another'.tr,
                  style: TextStyles.font22White,
                ),
              ),
            ),
            horizontalSpace(10),
            Expanded(child: FavoriteButton(quote: quote)),
          ],
        ),
      ],
    );
  }
}
