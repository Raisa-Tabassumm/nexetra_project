import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'jobboard_screen.dart';
import 'appliedjob_screen.dart';
import 'confirmedjob_screen.dart';

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
              return const [
                PopupMenuItem(
                  value: 'Contact Us',
                  child: Text('Contact Us'),
                ),
                PopupMenuItem(
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
                buildTopButton(Icons.person, "Profile", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );
                }),
                buildTopButton(Icons.dashboard, "Job Board", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const JobBoardScreen()),
                  );
                }),
                buildTopButton(Icons.task_alt, "Applied Job", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppliedJobScreen()),
                  );
                }),
                buildTopButton(Icons.check_circle, "Confirmed Job", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ConfirmedJobScreen()),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopButton(IconData icon, String label, {required VoidCallback onTap}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(16),
            child: Icon(icon, color: Colors.indigo),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
  // push test 2
}