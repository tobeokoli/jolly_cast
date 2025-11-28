# JollyCast

A modern podcast streaming and discovery mobile application built with Flutter. Discover trending episodes, manage your favorite podcasts, and enjoy high-quality audio streaming on iOS and Android.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Getting Started](#getting-started)
- [State Management](#state-management)
- [Architecture](#architecture)
- [Assumptions](#assumptions)
- [Future Improvements](#future-improvements)
- [Contributing](#contributing)

## Project Overview

JollyCast is a feature-rich podcast application that allows users to:
- Browse and discover trending episodes
- Stream high-quality audio content
- Manage authentication and user preferences
- Track episode playback and ratings
- Access detailed podcast information with publisher details

The application follows clean architecture principles with clear separation of concerns between presentation, domain, and data layers.

## Features

- 🎙️ **Trending Episodes Discovery** — Browse curated trending episodes with pagination support
- 🔐 **Secure Authentication** — User login with secure token storage
- 🎵 **Audio Playback** — Integrated audio streaming using `just_audio` package
- 💾 **Local Storage** — Secure local storage for tokens and user preferences
- 🎨 **Material Design** — Beautiful, responsive UI with dark theme support
- 📡 **Robust Networking** — Dio-based HTTP client with automatic token injection and error handling
- ❄️ **Immutable Models** — Freezed-generated models for type safety and code generation

## Getting Started

### Prerequisites

- **Flutter** >= 3.32.4
- **Dart** >= 3.8.1
- **Xcode** (for iOS development) or **Android Studio** (for Android development)
- **Git**

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd jolly_cast
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate model code** (freezed & json_serializable)
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
   Or use the newer `dart run` command:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   
   **iOS:**
   ```bash
   flutter run -d "iPhone 15" # or your preferred simulator
   ```
   
   **Android:**
   ```bash
   flutter run -d emulator-5554 # or your connected device
   ```
   
   **Generic:**
   ```bash
   flutter run
   ```

### Development Workflow

- **Watch mode for code generation** (auto-regenerates on file changes):
  ```bash
  dart run build_runner watch --delete-conflicting-outputs
  ```

- **Run with specific flavor or configuration**:
  ```bash
  flutter run --flavor dev --target lib/main.dart
  ```

- **Build release APK** (Android):
  ```bash
  flutter build apk --release
  ```

- **Build release IPA** (iOS):
  ```bash
  flutter build ios --release
  ```

## State Management

### Chosen Architecture: Clean Architecture with Command Pattern

JollyCast uses a **layered clean architecture** with **MVVM (Model-View-ViewModel)** pattern:

#### Layers

1. **Presentation Layer** (`lib/features/*/presentation/`)
   - **Views**: Stateful/Stateless widgets that display UI
   - **ViewModels**: `JollyViewModel` base class extending `ChangeNotifier` for reactive state management
   - **Commands**: `Command1<T, P>` pattern for handling user interactions and async operations
   
2. **Domain Layer** (`lib/features/*/domain/`)
   - **Entities**: Pure business logic models
   - **Repositories**: Abstract interfaces defining business contracts
   - **UseCases**: Encapsulated business logic (e.g., `Login`, `GetUser`, `SaveToken`)

3. **Data Layer** (`lib/features/*/data/`)
   - **DataSources**: Remote (API) and local (SharedPreferences, FlutterSecureStorage) data access
   - **Repositories**: Implementation of domain repositories, orchestrating data sources
   - **Models (DAOs)**: Freezed models with JSON serialization for API responses

#### State Management Details

- **ChangeNotifier + ListenableBuilder**: Simple, performant reactive UI updates
- **Command Pattern**: Encapsulates async operations with loading/error states
- **Error Streaming**: Centralized error handling through `errorStream` in `JollyViewModel`
- **Dependency Injection**: GetIt service locator for loose coupling and testability

#### Example Flow

```
User Action (UI) → ViewModel.command.execute() 
  → UseCase.call() 
  → Repository.method() 
  → DataSource (remote/local) 
  → Response parsing 
  → ViewModel notifies listeners 
  → UI rebuilds
```

#### Why This Approach?

- ✅ **Testability**: Each layer can be tested independently with mocks
- ✅ **Maintainability**: Clear separation of concerns
- ✅ **Scalability**: Easy to add new features without modifying existing code
- ✅ **Reusability**: Commands and UseCases can be reused across ViewModels
- ✅ **Performance**: Minimal rebuild cycles with targeted `ListenableBuilder` widgets

## Architecture

### Project Structure

```
lib/
├── main.dart                          # Application entry point
├── core/
│   ├── di/                            # Dependency injection setup
│   ├── navigation/                    # Routing & navigation
│   ├── networking/                    # Dio client, interceptors, API configuration
│   ├── local_storage/                 # SharedPreferences & SecureStorage wrapper
│   ├── presentation/                  # Reusable UI components & themes
│   ├── shared/                        # Command pattern, Result type, common utilities
│   ├── theme/                         # App theming (colors, text styles, sizes)
│   └── error/                         # Error handling and exceptions
└── features/
    ├── auth/                          # Authentication feature
    │   ├── data/                      # DataSources, Models, Repositories
    │   ├── domain/                    # Entities, UseCases, Repository interfaces
    │   └── presentation/              # Login screen, ViewModels
    ├── discover/                      # Podcast discovery feature
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    ├── podcast_player/                # Audio playback feature
    ├── root/                          # Root navigation scaffold
    └── splash/                        # Splash screen
```

### Data Flow

1. **API Call**: `EditorsPickDatasource.getEditorsPick()` → `dio.get()`
2. **Response Parsing**: `EditorsPickResponseDao.fromJson()` (Freezed + json_serializable)
3. **Repository**: `EditorsPickRepositoryImpl` transforms DAO to domain models
4. **UseCase**: `GetEditorsPick(repository)` executes business logic
5. **ViewModel**: `DiscoverViewModel(getEditorsPick)` handles UI state
6. **UI**: `ListenableBuilder` listens to ViewModel changes and rebuilds

## Assumptions

1. **API Response Structure**
   - Assumes the backend returns paginated responses with consistent structure: `{ message, data: { data: [...], pagination_fields } }`
   - Nested pagination metadata is always present in trending episodes endpoint

2. **User Authentication**
   - Assumes token-based authentication
   - Token is securely stored in `FlutterSecureStorage` and automatically injected via `JollyTokenInterceptor`

3. **Local Storage**
   - `SharedPreferences` for non-sensitive data (preferences, settings)
   - `FlutterSecureStorage` for sensitive data (tokens, credentials)
   - Assumes platform support for secure storage on both iOS and Android

4. **Audio Playback**
   - Assumes network connectivity for streaming (no offline mode currently)
   - Assumes valid MP3/audio URLs from API responses

5. **State Persistence**
   - Last login time is tracked for analytics

6. **Error Handling**
   - All API errors are mapped to `AppError` with consistent structure
   - UI displays snackbars for user-facing errors

7. **Pagination**
   - Pagination is handled server-side; client requests page by page
   - No infinite scrolling implemented yet (manual pagination per page)

## Future Improvements

### High Priority

1. **Offline Mode**
   - Cache episodes locally with Hive or SQLite
   - Sync when connectivity is restored
   - Allow playback of cached episodes without network

2. **Infinite Scroll / Pagination UI**
   - Implement infinite scroll for trending episodes
   - Add loading indicators during page transitions
   - Preload next page before reaching end of list

3. **Enhanced Error Handling**
   - Retry mechanisms with exponential backoff
   - User-friendly error messages for different failure scenarios
   - Error recovery workflows (e.g., "Retry" button on network errors)

4. **Testing**
   - Unit tests for UseCases, Repositories, and ViewModels
   - Widget tests for UI components
   - Integration tests for critical user flows
   - Target: 70%+ code coverage

### Medium Priority

5. **Advanced Playback Controls**
   - Playback speed adjustment
   - Chapter navigation (if available from API)
   - Sleep timer
   - Bookmarks/Timestamps within episodes

6. **User Preferences & Settings**
   - Dark/Light theme toggle
   - Audio quality selection (bitrate)
   - Download preferences
   - Notification settings

7. **Podcast Subscription Management**
   - Subscribe/Unsubscribe from podcasts
   - Manage subscriptions in a dedicated view
   - Auto-refresh new episodes from subscriptions

8. **Search & Filtering**
   - Full-text search for podcasts and episodes
   - Filter by category, date range, duration
   - Save search history

### Low Priority (Nice-to-Have)

9. **Social Features**
   - Share episodes with friends
   - User ratings and reviews
   - Follow other users' recommendations

10. **Analytics & Tracking**
    - Track listening habits
    - Display listening statistics (total time, episodes played)
    - Personalized recommendations based on listening history

11. **Performance Optimization**
    - Image caching with advanced cache strategies
    - Lazy loading of episode lists
    - Memory profiling and optimization
    - Build size reduction

12. **Internationalization (i18n)**
    - Multi-language support
    - Localization for different regions

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Create a feature branch: `git checkout -b feature/your-feature`
2. Commit with descriptive messages: `git commit -m "feat: add feature description"`
3. Push and create a Pull Request
4. Ensure all tests pass before submitting

## License

This project is licensed under the MIT License — see LICENSE file for details.

## Support

For issues, questions, or suggestions, please open an issue in the repository.

---

**Happy Podcasting! 🎙️**
