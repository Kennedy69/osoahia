import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/home.dart';
import 'package:osoahia/dashboard/product%20screen.dart';
import 'package:osoahia/dashboard/storeorders.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedIndex = 0;

    List <Widget> pages = [
   DashBoard(),
   ProductScreen(),
   StoreOrder(),

    ];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Text("Welcome Emeka Stores",style:
       TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 18.0,
      fontWeight: FontWeight.bold

       ),
      ),

      Text("August 12, 2023",style:
       TextStyle(
      color: Color.fromRGBO(160, 160, 160, 1),
      fontSize: 14.0,
      fontWeight: FontWeight.bold

       ),
      ),

        ],
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right:15.0),
          child: GestureDetector(
          
            child: Icon(
            Icons.store,
            size: 45.0,
            color: Color.fromRGBO(255, 165, 0, 1),
                  
              ),
          ),
        ),
      ],
          
    ),

    bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(72, 160, 242, 1) ,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,

           onTap: (int index){
          setState(() {
            selectedIndex =index;
          });
          },
        items:<BottomNavigationBarItem>[
        
         BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40.0,
                // color: Colors.black,
              ),
              label: "Home"
    
            ),
    
         BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                size: 40.0,
                // color: Colors.black,
              ),
              label: "Products"
    
            ),
         
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
                size: 40.0,
                // color: Colors.black,
                
              ),
              label: "Home"
    
            ),
         
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                size: 40.0,
                // color: Colors.black,
              ),
              label: "Home"
    
            ),
    
    
        ]
        ),

         
     body: pages.elementAt(selectedIndex),

    
    );
  }
}