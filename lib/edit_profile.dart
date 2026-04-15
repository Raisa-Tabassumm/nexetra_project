import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadCurrentData();
  }

  Future<void> _loadCurrentData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      if (user.displayName != null) {
        nameController.text = user.displayName!;
      }
      try {
        DocumentSnapshot doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
        if (doc.exists) {
          bioController.text = doc.get('bio') ?? '';
        }
      } catch (e) {

      }
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    bioController.dispose();
    super.dispose();
  }

  Future<void> _saveChanges() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {

        if (nameController.text.isNotEmpty) {
          await user.updateDisplayName(nameController.text);
          await user.reload();
        }


        if (passwordController.text.isNotEmpty) {
          await user.updatePassword(passwordController.text);
        }


        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'bio': bioController.text
        }, SetOptions(merge: true));

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Profile updated successfully")),
          );
          Navigator.pop(context);
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to update profile: $e")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          

          const Text("Change Name", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: "Enter new name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),


          const Text("Change Password", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          TextField(
            controller: passwordController,
            obscureText: true, // hides the password
            decoration: const InputDecoration(
              hintText: "Enter new password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),


          const Text("Change Bio", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          TextField(
            controller: bioController,
            maxLines: 4, // Make the bio text field bigger
            decoration: const InputDecoration(
              hintText: "Enter new bio",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 40),


          ElevatedButton(
            onPressed: () {

              _saveChanges();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: const Text("Save Changes", style: TextStyle(fontSize: 16)),
          ),

        ],
      ),
    );
  }
}
