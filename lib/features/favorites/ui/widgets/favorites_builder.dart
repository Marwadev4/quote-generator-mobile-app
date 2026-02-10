import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/features/favorites/logic/favorites_controller.dart';
import 'package:quote_generator_mobile_app/features/favorites/ui/widgets/favorites_quote_card.dart';

class FavoritesBlocBuilder extends StatelessWidget {
  const FavoritesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FavoritesController>();
    return Expanded(
      child: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : controller.filteredFavorites.isEmpty
            ? Center(
                child: Text('no_favorites'.tr, style: TextStyles.font22White),
              )
            : ListView.separated(
                itemCount: controller.filteredFavorites.length,
                itemBuilder: (context, index) => FavoritesQuoteCard(
                  quote: controller.filteredFavorites[index],
                ),
                separatorBuilder: (context, index) => verticalSpace(10),
              ),
      ),
    );
  }
}
