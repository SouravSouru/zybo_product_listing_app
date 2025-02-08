# zybo_product_App
This project follows Clean Architecture, ensuring a well-structured, scalable, and testable codebase.


# Project Structure
```
 lib/
├── bloc/               # State management using BLoC
├── core/               # Core utilities (theme, config, utilities, services)
├── data/               # API calls, models, repositories
├── domain/             # Business logic (repository interfaces)
├── injection/          # Dependency injection (GetIt)
├── presentation/       # UI layer (screens, widgets)
├── shared/             # Shared widgets
├── main.dart           # Entry point of the application
```



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

###  Home Screen  
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043241.png" 
     alt="Home Screen" width="300" height="600"/>

### WishList 
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043248.png" 
     alt="Home Screen" width="300" height="600"/>

### Profile
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043417.png" 
     alt="Home Screen" width="300" height="600"/>

### Splash
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043278.png" 
     alt="Home Screen" width="300" height="600"/>

### Login
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043379.png" 
     alt="Home Screen" width="300" height="600"/>
 ### OTP
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043399.png" 
     alt="Home Screen" width="300" height="600"/>
 ### Register
<img src="https://github.com/SouravSouru/zybo_product_listing_app/blob/master/screenshots/Screenshot_1739043737.png" 
     alt="Home Screen" width="300" height="600"/>




