import 'package:flutter/material.dart';

import '../auth/login.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 254, 254, 252),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
          ),
          Center(
            child: Image(
              image: NetworkImage("https://res.cloudinary.com/edifice-solutions/image/upload/v1690977741/OliviaWilson_1_1_dodaxh.png"
              ),
              ),
          ),
          SizedBox(height: 30.0
          ),


          Text("Unlock Your Property's Potential with Osoahia:",style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),

          Text(" Your Gateway to a Vibrant Marketplace!",style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),

          SizedBox(
              height: 40.0,
              ),

               GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Login();

                  }));
                  
                },
                 child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      alignment: Alignment.center,
                    width: double.infinity,
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color:  Color.fromRGBO(255, 165, 0, 1),
                    ),
                             
                    child: Text("Get Started",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0,
                             
                             
                    ),
                    ),
                    ),
                  ),
               ),
        ],
      ),
    );
  }
}