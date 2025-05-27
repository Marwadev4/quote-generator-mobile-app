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

  List<FavoriteQuoteResponse> favorites = [];

  void search(String searchedQuote) {
    isLoading.value = true;
    if (searchedQuote.isNotEmpty) {
      final searchedQuotes =
          favorites
              .where((quote) => quote.quote.contains(searchedQuote))
              .toList();
      isLoading.value = false;
      favorites = searchedQuotes;
    } else {
      isLoading.value = false;
      favorites = favorites;
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
        favorites = quotes;
        isLoading.value = false;
      },
    );
  }
}
