import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Welcome')),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Enter name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                prefixIcon: const Icon(Icons.email),
                border: const OutlineInputBorder(),


              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                prefixIcon: const Icon(Icons.lock),
                border: const OutlineInputBorder(),


              ),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Submit",

                style: TextStyle(
                  color: Colors.indigo,

                ),
              ),


            ),
          ],
        ),
      ),
    );
  }
}