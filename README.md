# Authentication with Appwrite

This project demonstrates authentication using **email and password** with **Appwrite** in a Flutter application.

## 🚀 Features
- User registration with email and password
- User login authentication
- Secure session management
- Appwrite integration for backend authentication

## 🛠️ Setup Instructions

### Prerequisites
Make sure you have the following installed:
- [Flutter](https://flutter.dev/docs/get-started/install)
- [Appwrite](https://appwrite.io/) account and project setup

### Steps to Set Up the Project

1. **Clone the Repository**
   ```sh
   git clone https://github.com/komalsingh22/authentication-with-appwrite.git
   cd authentication-with-appwrite
   ```

2. **Install Dependencies**
   ```sh
   flutter pub get
   ```

3. **Configure Appwrite SDK**
   - Create an Appwrite project.
   - Set up authentication using email/password.
   - Obtain your Appwrite **Project ID**, **Endpoint**, and **API key**.
   - Update the Appwrite configuration in your Flutter app:
     ```dart
     Client client = Client()
       .setEndpoint('https://[YOUR-APPWRITE-ENDPOINT]')
       .setProject('[YOUR-PROJECT-ID]');
     ```

4. **Run the App**
   ```sh
   flutter run
   ```

## 📂 Project Structure
```
📦 authentication-with-appwrite
├── lib
│   ├── main.dart            # Entry point of the application
│   ├── auth_service.dart     # Appwrite authentication logic
│   ├── login_screen.dart     # User login screen
│   ├── signup_screen.dart    # User registration screen
│   ├── home_screen.dart      # Home screen after login
├── pubspec.yaml              # Flutter dependencies
└── README.md                 # Project documentation
```

## 🤝 Contributing
Feel free to fork this repository and submit pull requests to improve the project.

## 📜 License
This project is licensed under the MIT License.

---

🚀 **Happy Coding!** 😊

