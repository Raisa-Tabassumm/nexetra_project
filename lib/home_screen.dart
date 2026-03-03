import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          "Nexetra",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              print("Selected: $value");
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Contact Us',
                  child: Text('Contact Us'),
                ),
                const PopupMenuItem(
                  value: 'About Us',
                  child: Text('About Us'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTopButton(Icons.person, "Profile"),
                buildTopButton(Icons.dashboard, "Job Board"),
                buildTopButton(Icons.task_alt, "Applied Job"),
                buildTopButton(Icons.check_circle, "Confirmed Job"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(16),
          child: Icon(icon, color: Colors.indigo),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}