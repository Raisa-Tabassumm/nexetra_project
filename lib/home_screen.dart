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
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          // Small Logo
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              "assets/splash.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Nexetra",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2,2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Icon(icon, color: Colors.indigo, size: 28),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}