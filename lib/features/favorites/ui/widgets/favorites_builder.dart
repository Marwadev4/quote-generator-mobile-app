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
    return Expanded(
      child: GetBuilder<FavoritesController>(
        builder:
            (controller) => Obx(
              () =>
                  controller.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : controller.favorites.isEmpty
                      ? Center(
                        child: Text(
                          'No Favorites',
                          style: TextStyles.font22White,
                        ),
                      )
                      : ListView.separated(
                        itemCount: controller.favorites.length,
                        itemBuilder:
                            (context, index) => FavoritesQuoteCard(
                              quote: controller.favorites[index],
                            ),
                        separatorBuilder: (context, index) => verticalSpace(10),
                      ),
            ),
      ),
    );
  }
}
