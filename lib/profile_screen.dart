import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Influencer Profile"),
        backgroundColor: Colors.indigo,
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[

          const SizedBox(height: 10.0),

          // Profile Logo in Circular Shape (using Container)
          Center(
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
              ),
              child: Image.asset("assets/splash.png"),
            ),
          ),

         const  SizedBox(height: 10.0),

          // Name
          Container(
            margin: const EdgeInsets.all(15.0),
            child: const Text(
              "Raisa Tabassum",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(15.0),
            child: const Text(
              "Age: 23",
              style: TextStyle(fontSize: 18.0),
            ),
          ),

          // Social Media Card
          Card(
            margin: const EdgeInsets.all(15.0),
            color: Colors.grey[200],
            elevation: 5.0,

            child: Container(
              padding: const EdgeInsets.all(20.0),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Text("Facebook Followers: 120K"),
                  SizedBox(height: 8.0),

                  Text("YouTube Subscribers: 85K"),
                  SizedBox(height: 8.0),

                  Text("Instagram Followers: 150K"),

                ],
              ),
            ),
          ),

          // Collaboration Info Card
          Card(
            margin: const EdgeInsets.all(15.0),
            color: Colors.grey[200],
            elevation: 5.0,

            child: Container(
              padding: const EdgeInsets.all(20.0),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Text("Past Collaborations: 32"),
                  SizedBox(height: 8.0),

                  Text("Total Collaborations: 32"),
                  SizedBox(height: 8.0),

                  Text("Rating: 4.8 / 5"),
                  SizedBox(height: 8.0),

                  Text("Pending Jobs: 3"),
                  SizedBox(height: 8.0),

                  Text("Total Offers Received: 58"),

                ],
              ),
            ),
          ),

          const SizedBox(height: 20.0),

          // Button Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[

              ElevatedButton(
                onPressed: () {},
                child: const Text("Edit Profile"),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text("View Offers"),
              ),

            ],
          ),

        ],
      ),
    );
  }
}