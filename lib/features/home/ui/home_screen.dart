import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/di/dependency_injection.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
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
            colors: [ColorsManager.vividViolet, ColorsManager.moderateViolet],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ViewFavoriteQuotes(),
            verticalSpace(10),
            QuoteBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
