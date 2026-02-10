import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_controller.dart';
import 'package:quote_generator_mobile_app/features/home/ui/widgets/loading_quote_card.dart';
import 'package:quote_generator_mobile_app/features/home/ui/widgets/quote_card.dart';

class QuoteBlocBuilder extends StatelessWidget {
  const QuoteBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Container(
      decoration: BoxDecoration(
        color: LightColors.background,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(6.r),
          top: Radius.circular(0),
        ),
      ),
      padding: EdgeInsets.only(
        left: 18.w,
        right: 18.w,
        top: 30.h,
        bottom: 20.h,
      ),
      child: Obx(() {
        return controller.isLoading.value
            ? LoadingQuoteCard()
            : controller.quoteResponse != null
            ? QuoteCard(quote: controller.quoteResponse!)
            : const SizedBox();
      }),
    );
  }
}
