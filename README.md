# zybo_product_App
This project follows Clean Architecture, ensuring a well-structured, scalable, and testable codebase.


# Project Structure

lib/
 ├── bloc/               # State management using BLoC
 ├── core/               # Core utilities (theme, config, utilities,services)
 ├── data/               # API calls, models, repositories
 ├── domain/             # Business logic (repository interfaces)
 ├── injection/          # Dependency injection (GetIt)
 ├── presentation/       # UI layer (screens, widgets)
 ├── shared/             # Shared widgets
 ├── main.dart           # Entry point of the application


# State Management & Architecture

-> flutter_bloc: BLoC pattern for managing state.
-> equatable: Helps compare objects efficiently.
-> freezed_annotation: Code generation for immutable objects and unions.

# Networking
dio: For making API requests.
retrofit: Helps in API communication with type safety.
retrofit_generator: Generates API-related boilerplate code.

# Dependency Injection
get_it: A service locator for managing dependencies.

# Navigation
go_router: A declarative, simple, and scalable way to handle navigation in Flutter.

# Local Storage
hive_flutter: Used to store authentication tokens securely.


## 📸 App Screenshots  

### 🏠 Home Screen  
![Home Screen](https://raw.githubusercontent.com/your-username/your-repo/main/screenshots/home.png)

### 🔍 Search Screen  
![Search Screen](https://raw.githubusercontent.com/your-username/your-repo/main/screenshots/search.png)

### 🛒 Cart Screen  
![Cart Screen](https://raw.githubusercontent.com/your-username/your-repo/main/screenshots/cart.png)

### 👤 Profile Screen  
![Profile Screen](https://raw.githubusercontent.com/your-username/your-repo/main/screenshots/profile.png)

### ⚙️ Settings Screen  
![Settings Screen](https://raw.githubusercontent.com/your-username/your-repo/main/screenshots/settings.png)




