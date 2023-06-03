# Ceiba User-Post Flutter Application

This is a simple Flutter application that fetches and displays user and post data from a remote source. The data is also stored locally using Hive.

## Project Architecture

This project follows a simple layered architecture:

1. `Connections`: Handles the data fetching and storage. Contains both local (Hive-based) and remote (http-based) data connections.

2. `Models`: Contains the data models that define the structure of the users and posts.

3. `Widgets`: Contains the UI components that display the user and post data.

4. `Providers`: Contains the business logic and state management for the application.

5. `Theme`: Contains the styling and theming for the application.

6. `Adapters`: Contains the adapters required for serializing and deserializing the data models for Hive storage.

### Key Project Files and Paths

- `lib/connections/models/*.dart`: Data models for User and Company, used to structure the fetched data.
- `lib/connections/local/*.dart`: Handles the local storage of data using Hive.
- `lib/connections/remote/*.dart`: Handles the fetching of data from the remote API.
- `lib/widgets/*.dart`: Contains the custom Flutter widgets used in the application.
- `lib/theme/app_theme.dart`: Defines the color scheme and typography for the application.
- `lib/providers/users_providers.dart`: Contains the Provider for managing user data.

## Project Dependencies

This project uses the following dependencies:

 
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  cupertino_icons: ^1.0.2
  flutter_launcher_icons: ^0.13.1
  http: ^0.13.0
  flutter_native_splash: ^2.3.0
  provider: ^6.0.5
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  http: for performing HTTP requests.
  provider: for state management and passing data down the widget tree.
  hive and hive_flutter: for local data persistence.
  flutter_launcher_icons and flutter_native_splash: for customizing the app's launcher icons and splash screen.
  cupertino_icons: for iOS-style icons.

## Getting Started

This project is a starting point for a Flutter application.


