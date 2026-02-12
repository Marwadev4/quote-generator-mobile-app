# Quote Generator Mobile App

A beautiful and intuitive Flutter mobile application that generates random inspirational quotes to brighten your day. Built with modern mobile development technologies and best practices.

## ✨ Features

- 🎲 Generate random inspirational quotes with a single tap
- ❤️ Save your favorite quotes for later viewing
- 🔍 Search through your favorite quotes
- 🌙 Full dark and light theme support
- 🌍 Complete localization support (English & Arabic)
- 📱 Beautiful, modern UI with smooth animations
- 💾 Persistent theme and language preferences

## 📱 Screenshots
```
<div style="display: flex; flex-wrap: wrap; gap: 10px; justify-content: center;">
![photo_2026-02-13_01-53-32](https://github.com/user-attachments/assets/70e83a2b-b43d-468c-bfa5-a8af7df6d28a)
![photo_2026-02-13_01-53-31](https://github.com/user-attachments/assets/a037b82e-3ccb-4c00-900a-97d437d24362)
![photo_2026-02-13_01-53-30](https://github.com/user-attachments/assets/c7c95465-3d50-4b0d-8f79-ee9e2eae76bb)
</div>
<div style="display: flex; flex-wrap: wrap; gap: 10px; justify-content: center;">
![photo_2026-02-13_01-53-29](https://github.com/user-attachments/assets/075211b1-9bc7-48c2-9dd4-904e2060978b)
![photo_2026-02-13_01-53-27](https://github.com/user-attachments/assets/f1269c36-9fee-4d2e-a9a1-52fad88ad5f0)
![photo_2026-02-13_01-53-24](https://github.com/user-attachments/assets/0324008f-b8b8-400b-a86d-1b27d8454447)
</div>
```
## 🚀 Getting Started

### Prerequisites

- Flutter SDK (v3.0 or later)
- Dart SDK (v3.0 or later)
- Android Studio / VS Code with Flutter extension
- Android SDK (for Android development)
- Xcode (for iOS development)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/quote-generator-mobile-app.git
   cd quote-generator-mobile-app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

4. Build for production:
   ```bash
   # Android
   flutter build apk --release
   
   # iOS
   flutter build ios --release
   ```

## 🏗️ Project Structure

```
lib/
├── core/                          # Core utilities and services
│   ├── di/                        # Dependency injection
│   ├── localization/               # App translations
│   ├── networking/                 # API and HTTP services
│   ├── services/                   # Settings and storage services
│   ├── theming/                   # App themes and colors
│   └── widgets/                   # Reusable UI components
├── features/                      # Feature modules
│   ├── home/                      # Home screen and quote generation
│   ├── favorites/                 # Favorites management
│   └── settings/                  # App settings
└── main.dart                     # App entry point
```

## 🛠️ Built With

- **[Flutter](https://flutter.dev/)** - Cross-platform mobile development framework
- **[GetX](https://pub.dev/packages/get)** - State management, routing, and dependency injection
- **[Dio](https://pub.dev/packages/dio)** - HTTP client for API requests
- **[GetStorage](https://pub.dev/packages/get_storage)** - Local data persistence
- **[Flutter ScreenUtil](https://pub.dev/packages/flutter_screenutil)** - Responsive design utilities
- **[SQFlite](https://pub.dev/packages/sqflite)** - Local database for favorites
- **[Shimmer](https://pub.dev/packages/shimmer)** - Loading animations

## 🎨 Theming System

The app features a comprehensive theming system with:

### Light Theme
- **Primary**: `#5D13E7` (Vivid Violet)
- **Secondary**: `#8249B5` (Moderate Violet)
- **Background**: `#FBFBFB` (Very Light Gray)
- **Cards**: `#FFFFFF` (White)

### Dark Theme
- **Primary**: `#9B7BFF` (Light Violet)
- **Secondary**: `#6B46C1` (Dark Violet)
- **Background**: `#121212` (Dark Gray)
- **Cards**: `#252437` (Dark Card)

## 🌍 Localization

The app supports full localization with:

- **English** (`en`) - Default language
- **Arabic** (`ar`) - Right-to-left support
- **Dynamic RTL/LTR** layout switching
- **Persistent language preferences**

## 📦 Dependencies

### Core Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6
  dio: ^5.4.0
  get_storage: ^2.1.1
  flutter_screenutil: ^5.9.0
  sqflite: ^2.3.0
  shimmer: ^3.0.0
  flutter_localizations:
    sdk: flutter
```

### Dev Dependencies
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
```

## 🔧 Configuration

### API Configuration
The app uses the [ZenQuotes API](https://zenquotes.io/) for fetching random quotes:

```dart
// API endpoint
static const String quotesApi = 'https://zenquotes.io/api/random';
```

### Database Schema
Favorites are stored locally using SQLite:

```sql
CREATE TABLE favorites (
  id INTEGER PRIMARY KEY,
  quote TEXT NOT NULL,
  author TEXT NOT NULL
);
```

## 🧪 Testing

Run the test suite:

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage
```

## 📱 Platform Support

- ✅ Android (API 21+)
- ✅ iOS (iOS 11.0+)
- 🔄 Web (In Development)
- 🔄 Desktop (In Development)

## 🎯 Performance Features

- **Lazy Loading**: Quotes load on-demand
- **Local Caching**: Favorites stored locally for instant access
- **Optimized Images**: Efficient image loading and caching
- **Smooth Animations**: 60fps animations with proper performance
- **Memory Management**: Proper disposal of resources

## 🔒 Security & Privacy

- **No Personal Data Collection**: App doesn't collect any personal information
- **Local Storage Only**: All data stored locally on device
- **Network Security**: HTTPS for all API communications
- **Permissions**: Minimal required permissions

## 🐛 Troubleshooting

### Common Issues

**Build Issues:**
```bash
# Clean build cache
flutter clean
flutter pub get

# Update Flutter
flutter upgrade
```

**Runtime Issues:**
- Check internet connection for quote generation
- Ensure sufficient storage space for favorites
- Restart app if theme doesn't apply correctly

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Quotes** provided by [ZenQuotes API](https://zenquotes.io/)
- **Icons** from [Flutter Icons](https://api.flutter.dev/flutter/material/Icons)
- **Inspiration** from various quote generator applications
- **Community** contributions and feedback

## 📬 Contact

- **Developer**: Your Name
- **Email**: your.email@example.com
- **Twitter**: [@yourtwitter](https://twitter.com/yourtwitter)
- **GitHub**: [Your GitHub](https://github.com/yourusername)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

<div align="center">
  <p>Built with ❤️ using Flutter</p>
  <p>© 2024 Quote Generator Mobile App</p>
</div>
