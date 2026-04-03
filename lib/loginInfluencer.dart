import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/createaccount.dart';
import 'home_screen.dart';

class loginInfluencer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:
    AppBar(
      backgroundColor: Colors.indigo,
      title: Center(
        child:
        Text("Nexetra",
        style:
          TextStyle(
          fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

    ),


    body:

    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Log in as Influencer",
            style:
            TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
          SizedBox(height: 30,),

          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                      )
                    ),

                  ),


                  SizedBox(height: 15,),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            )
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                      )
                    ),

                  ),

                  SizedBox(height: 30,),

                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  } ,
                      child: Text("Submit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black
                        ),
                      ),
                  ),

                  SizedBox(height: 20,),

                  Text('Or', style:
                    TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20,),

                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Createaccount()),);
                  } ,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                      ),
                      child: Text("Create Account",
                      style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                      ),
                      ),
                  )


                ],
              ),
            ),
          ),
        ],
      ),
    ),
  

  );
  }




}