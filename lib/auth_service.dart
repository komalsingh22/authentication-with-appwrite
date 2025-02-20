// appwrite_service.dart
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:auth_app/constants/constants.dart';

class AppwriteService {
  static final Client client = Client()
    ..setEndpoint(appwriteEndpoint) // Replace with your endpoint
    ..setProject(appwriteProjectId); // Replace with your Appwrite project ID

  static final Account account = Account(client);

  static Future<models.Session?> loginUser(String email, String password) async {
    try {
      return await account.createEmailPasswordSession(email: email, password: password);
    } catch (e) {
      print('Login failed: $e');
      return null;
    }
  }

  static Future<models.User?> registerUser(String name, String email, String password) async {
    try {
      return await account.create(userId: ID.unique(), email: email, password: password, name: name);
    } catch (e) {
      if (e is AppwriteException && e.code == 409) {
        print("User already exists. Please log in instead.");
      } else {
        print('Registration failed: $e');
      }
      return null;
    }
  }

  static Future<void> logoutUser() async {
    try {
      await account.deleteSession(sessionId: 'current');
    } catch (e) {
      print('Logout failed: $e');
    }
  }

  static Future<models.User?> getCurrentUser() async {
    try {
      return await account.get();
    } catch (e) {
      print('Error retrieving user: $e');
      return null;
    }
  }
}
