import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.jpg"), // contoh
            ),
            SizedBox(height: 12),
            Text("Nama: Yanri"),
            Text("Email: yanri@example.com"),
            Text("Hobi: Coding & Traveling"),
          ],
        ),
      ),
    );
  }
}
