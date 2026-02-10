import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/features/favorites/data/models/favorite_quote_response.dart';
import 'package:quote_generator_mobile_app/features/favorites/data/repos/favorites_repo.dart';

class FavoritesController extends GetxController {
  final FavoritesRepo _favoritesRepo;
  FavoritesController(this._favoritesRepo);

  RxBool isLoading = false.obs;
  String failureMsg = '';

  void deleteQuote(String quote) async {
    isLoading.value = true;
    final response = await _favoritesRepo.deleteQuote(quote);
    response.fold(
      (message) async {
        isLoading.value = false;
        failureMsg = message.message ?? 'Failure';
        await getDataFromDatabase();
      },
      (message) async {
        await getDataFromDatabase();
      },
    );
  }

  RxList<FavoriteQuoteResponse> favorites = <FavoriteQuoteResponse>[].obs;
  RxList<FavoriteQuoteResponse> filteredFavorites =
      <FavoriteQuoteResponse>[].obs;

  void search(String searchedQuote) {
    if (searchedQuote.isNotEmpty) {
      final searchedQuotes = favorites
          .where(
            (quote) =>
                quote.quote.toLowerCase().contains(searchedQuote.toLowerCase()),
          )
          .toList();
      filteredFavorites.assignAll(searchedQuotes);
    } else {
      filteredFavorites.assignAll(favorites);
    }
  }

  Future<void> getDataFromDatabase() async {
    isLoading.value = true;
    final response = await _favoritesRepo.getDataFromDatabase();
    response.fold(
      (message) {
        isLoading.value = false;
        failureMsg = message.message ?? 'Failure';
      },
      (quotes) {
        favorites.assignAll(quotes);
        filteredFavorites.assignAll(quotes);
        isLoading.value = false;
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    getDataFromDatabase();
  }
}
