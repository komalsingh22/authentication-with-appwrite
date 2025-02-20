// home_page.dart
import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> logout() async {
    await AppwriteService.logoutUser();
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), actions: [
        IconButton(onPressed: logout, icon: const Icon(Icons.logout)),
      ]),
      body: const Center(child: Text('Welcome to Home Page!')),
    );
  }
}
