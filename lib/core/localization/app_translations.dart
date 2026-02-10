import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      // Home Screen
      'home_title': 'Quote Generator',
      'view_favorites': 'View Favorite Quotes',
      'generate_another': 'Generate Another Quote',
      'settings': 'Settings',
      
      // Favorites Screen
      'favorites': 'Favorites',
      'back_to_home': 'Back To Home Screen',
      'no_favorites': 'No Favorites',
      'search_quotes': 'Search quotes...',
      
      // Settings Screen
      'settings_title': 'Settings',
      'language': 'Language',
      'theme': 'Theme',
      'light_mode': 'Light Mode',
      'dark_mode': 'Dark Mode',
      'english': 'English',
      'arabic': 'العربية',
      
      // Common
      'back': 'Back',
      'loading': 'Loading...',
      'error': 'Error',
      'unknown_error': 'Unknown error occurred',
      'connection_failed': 'Connection to server failed',
      'request_cancelled': 'Request to the server was cancelled',
      'connection_timeout': 'Connection timeout with the server',
      'receive_timeout': 'Receive timeout in connection with the server',
      'send_timeout': 'Send timeout in connection with the server',
      'something_went_wrong': 'Something went wrong',
      'payment_required': 'Payment required',
      
      // Quote Actions
      'add_to_favorites': 'Add to Favorites',
      'remove_from_favorites': 'Remove from Favorites',
      'quote_added': 'Quote added to favorites',
      'quote_removed': 'Quote removed from favorites',
    },
    'ar': {
      // Home Screen
      'home_title': 'مولد الاقتباسات',
      'view_favorites': 'عرض الاقتباسات المفضلة',
      'generate_another': 'توليد اقتباس آخر',
      'settings': 'الإعدادات',
      
      // Favorites Screen
      'favorites': 'المفضلة',
      'back_to_home': 'العودة إلى الشاشة الرئيسية',
      'no_favorites': 'لا توجد اقتباسات مفضلة',
      'search_quotes': 'البحث عن الاقتباسات...',
      
      // Settings Screen
      'settings_title': 'الإعدادات',
      'language': 'اللغة',
      'theme': 'المظهر',
      'light_mode': 'الوضع الفاتح',
      'dark_mode': 'الوضع الداكن',
      'english': 'English',
      'arabic': 'العربية',
      
      // Common
      'back': 'رجوع',
      'loading': 'جاري التحميل...',
      'error': 'خطأ',
      'unknown_error': 'حدث خطأ غير معروف',
      'connection_failed': 'فشل الاتصال بالخادم',
      'request_cancelled': 'تم إلغاء الطلب إلى الخادم',
      'connection_timeout': 'انتهت مهلة الاتصال بالخادم',
      'receive_timeout': 'انتهت مهلة الاستلام في الاتصال بالخادم',
      'send_timeout': 'انتهت مهلة الإرسال في الاتصال بالخادم',
      'something_went_wrong': 'حدث خطأ ما',
      'payment_required': 'الدفع مطلوب',
      
      // Quote Actions
      'add_to_favorites': 'إضافة إلى المفضلة',
      'remove_from_favorites': 'إزالة من المفضلة',
      'quote_added': 'تمت إضافة الاقتباس إلى المفضلة',
      'quote_removed': 'تمت إزالة الاقتباس من المفضلة',
    },
  };
}
