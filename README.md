# Around: קבוצות סביבך

#### MVP Architecture (Model-View-Presenter) [Based Chat GPT](https://chat.openai.com/share/0c65e276-bfe8-4d50-b2d0-0b6644742458)
The Chat summery is below (:

| Type                   | Result            |
|------------------------|-------------------|
| Ui Layout?             | /views            |
| Handle functions?      | /presenters       |
| API Calls?             | /services (Model) |

## MVP Folder Structure
Not all folder might be necessary.

For Example: `authentication_service.dart` can replace `firebase_service.dart`

```dart
lib/
├── config/                  # Configuration files and settings
│   └── firebase_options.dart  # Firebase configuration settings
├── generated/               # Auto-generated code (e.g., by build_runner)
├── models/                  # Data layer and business logic
│   ├── user.dart            # Data model
│   └── repository/          # Repository for API or Firebase calls
│       ├── user_auth.dart     # Handles direct API calls
│       └── firebase_service.dart  # Handles Firebase interactions
├── services/                # Services for various app functionalities
│   ├── auth_service.dart  # Handles authentication
│   └── storage_service.dart  # Local storage management
│   ├── logger_service.dart  # Logging functionality
│   └── navigator_service.dart  # Navigation handling
├── shared_widgets/          # Common reusable UI components
│   └── custom_app_bar.dart
├── utils/                   # Utility classes and functions
│   └── validators.dart      # Form validation utilities
├── views/                   # UI components, screens
│   ├── login_view/
│   │   ├── login_view.dart     # Login screen layout and UI logic
│   │   └── login_button.dart   # Specific login button (if reusable)
│   └── home_view.dart       # Home screen
├── presenters/              # Presenters handle the business logic and update the view
│   ├── login_presenter.dart
│   └── home_presenter.dart
└── main.dart                # Entry point, Firebase initialization can be done here
```

## MVP Logic examples
- Model: Data layer & API calls. Like `user_model.dart` & `auth_service.dart`
- View: Layout & UI logic. Like `login_view.dart`
- Presenter: Handle business logic & update the Ui view. Like `login_presenter.dart`

### View - login_view.dart
#### `Lib/views/login_view/login_view.dart`
```dart
import 'package:flutter/material.dart';
import 'login_presenter.dart';

final LoginPresenter presenter; // Presenter connection 
LoginButton(
    onPressed: () {
            presenter.login( _emailController.text, _passwordController.text);
        }),
```

### Presenter - login_presenter.dart
#### `Lib/presenters/login_presenter.dart`
State management will be set here, Provider in this example

```dart
import 'package:flutter/material.dart';
import 'auth_service.dart';

class LoginPresenter with ChangeNotifier{
  final FirebaseAuthService authService;

  LoginPresenter(this.authService);

  Future<bool> login(String email, String password) async {
    try {
      await authService.signIn(email, password); // Call the API Model
      notifyListeners(); // Rebuild the UI
      return true; 
    } catch (e) {
      return false; 
    }
  }
}
```

### Model - auth_service.dart
#### `Lib/services/auth_service.dart`
Can also be specific and set at `Lib/models/repository/user_auth.dart`

`user_model.dart` will be generetad via Freezed

#### Firebase example:

```dart
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> signIn(String email, String password) async {
    return await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }
}
```



#### Classic API example:

```dart
import 'dart:convert';
import 'package:flutter_mvp/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final String _baseUrl = 'https://your-api-server.com';

  Future<User> authenticate(String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return User.fromJson(responseData);
    } else {
      throw Exception('Failed to authenticate user.');
    }
  }
}

```



