import 'package:flutter/material.dart';
import 'sign.dart';
import 'home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                prefixIcon: const Icon(Icons.lock),
                border: const OutlineInputBorder(),


              ),
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
                child: Text(
                    "Submit",

                  style: TextStyle(
                    color: Colors.indigo,

                  ),
                ),


            ),
            Text(
              'Or,',
              style:
              TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black54,

              ),

            ),

            TextButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignPage(),
                  ),
                  );

                },
                child:const Text(
                  "Create Account",
                  style:
                    TextStyle(
                      fontSize: 17,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,

                    )
                )

            ),
          ],
        ),
      ),
    );
  }
}