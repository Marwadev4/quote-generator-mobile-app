import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_text_button.dart';
import 'package:quote_generator_mobile_app/features/home/data/models/quote_response.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_controller.dart';

class FavoriteButton extends StatefulWidget {
  final QuoteResponse quote;

  const FavoriteButton({super.key, required this.quote});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(6.r),
        top: Radius.circular(0),
      ),
      backgroundColor: ColorsManager.veryLightGray,
      child:
          isFavorite
              ? Icon(
                Icons.favorite,
                color: ColorsManager.moderateViolet,
                size: 30.sp,
              )
              : Icon(
                Icons.favorite_border,
                color: ColorsManager.moderateViolet,
                size: 30.sp,
              ),
      borderColor: ColorsManager.moderateViolet,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        Get.find<HomeController>().insertOrRemoveFromDatabase(widget.quote);
      },
    );
  }
}
