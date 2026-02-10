import 'package:get/get.dart';
import 'package:quote_generator_mobile_app/features/favorites/data/models/favorite_quote_response.dart';
import 'package:quote_generator_mobile_app/features/home/data/models/quote_response.dart';
import 'package:quote_generator_mobile_app/features/home/data/repos/home_repo.dart';

class HomeController extends GetxController {
  final HomeRepo _homeRepo;
  HomeController(this._homeRepo);

  RxBool isLoading = true.obs;
  QuoteResponse? quoteResponse;
  String failureMsg = '';

  @override
  void onInit() {
    super.onInit();
    getRandomQuote();
    getDataFromDatabase();
  }

  void getRandomQuote() async {
    isLoading.value = true;
    var result = await _homeRepo.getRandomQuote();
    result.fold(
      (failure) {
        isLoading.value = false;
        failureMsg = failure.message ?? 'Failure';
        // toast(message: failure.message ?? 'Failure', state: ToastStates.ERROR);
      },
      (quote) {
        quoteResponse = quote;
        isLoading.value = false;
      },
    );
  }

  String quote = '';

  void insertOrRemoveFromDatabase(QuoteResponse quoteResponse) async {
    isLoading.value = true;
    if (quote != quoteResponse.quote) {
      final response = await _homeRepo.insertToDatabase(quoteResponse);
      response.fold(
        (message) {
          isLoading.value = false;
          failureMsg = message.message ?? 'Failure';
          // toast(message: failure.message ?? 'Failure', state: ToastStates.ERROR);
        },
        (message) {
          quote = quoteResponse.quote;
          getDataFromDatabase();
          isLoading.value = false;
        },
      );
    } else {
      final response = await _homeRepo.deleteQuote(quoteResponse.quote);
      response.fold(
        (message) {
          isLoading.value = false;
          failureMsg = message.message ?? 'Failure';
        },
        (message) {
          quote = '';
          getDataFromDatabase();
          isLoading.value = false;
        },
      );
    }
  }

  RxList<FavoriteQuoteResponse> favorites = <FavoriteQuoteResponse>[].obs;
  void getDataFromDatabase() async {
    final response = await _homeRepo.getDataFromDatabase();
    response.fold(
      (message) {
        failureMsg = message.message ?? 'Failure';
      },
      (quotes) {
        favorites.assignAll(quotes);
      },
    );
  }
}
