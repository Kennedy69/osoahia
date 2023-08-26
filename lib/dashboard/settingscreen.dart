import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/Accountsetting.dart';
import 'package:osoahia/dashboard/home.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),

    appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      automaticallyImplyLeading: false,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       GestureDetector(
        onTap: () {
          Navigator.of(context).pop(MaterialPageRoute(builder: (context){
            return DashBoard();
          }));
        },
         child: Text("Back",style: TextStyle(
             color: Color.fromRGBO(72, 160, 242, 1),
             fontSize: 18,
             fontWeight: FontWeight.bold,
         ),
         ),
       ),
      ],
      ),

    ), 

    body: ListView(
      shrinkWrap: true,
      children: [
      Column(
      children: [
      Center(
      child: CircleAvatar(
      backgroundColor: Color.fromRGBO(231, 243, 255, 1),
      radius: 65.0,
      child: Icon(
            Icons.store,
            size: 90.0,
            color: Color.fromRGBO(255, 165, 0, 1),
                  
              ), 
      ),
      
      ),

      SizedBox(
        height: 20.0,
        ),


      Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Change Store Logo",style: TextStyle(
          color: Color.fromRGBO(72, 160, 242, 1),
          fontSize: 16.0,
          fontWeight: FontWeight.bold
          ),
          ),

          Icon(Icons.file_upload_sharp,
          color: Color.fromRGBO(72, 160, 242, 1),
          ),
        ],
      ),
      ),
      


      SizedBox(
        height: 30.0
        ),
      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 70.0,
        width: double.infinity,
         decoration: BoxDecoration(
         color: Color.fromRGBO(231, 243, 255, 1),
          borderRadius: BorderRadius.circular(15.0
          ),
          ),
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Store Name Here",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.store,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),

      SizedBox(
        height: 10.0,
        ),
      
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 70.0,
        width: double.infinity,
         decoration: BoxDecoration(
         color: Color.fromRGBO(231, 243, 255, 1),
          borderRadius: BorderRadius.circular(15.0
          ),
          ),
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("store@gmail.com",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.email,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),

       SizedBox(
        height: 10.0,
        ),
      
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 70.0,
        width: double.infinity,
         decoration: BoxDecoration(
         color: Color.fromRGBO(231, 243, 255, 1),
          borderRadius: BorderRadius.circular(15.0
          ),
          ),
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("store@gmail.com",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.phone,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),

       SizedBox(
        height: 10.0,
        ),
      
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
           return AccountSetting();
            }));
          },
          child: Container(
          height: 70.0,
          width: double.infinity,
           decoration: BoxDecoration(
           color: Color.fromRGBO(231, 243, 255, 1),
            borderRadius: BorderRadius.circular(15.0
            ),
            ),
          
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Account Settings",style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 18.0,
            fontWeight: FontWeight.bold
            ),
            ),
                
            Icon(Icons.arrow_forward_ios,
            size: 45.0,
            color: Color.fromRGBO(255, 165, 0, 1),
            ),
            ],
            ),
          ),
          ),
        ),
      ),

      
       SizedBox(
        height: 10.0,
        ),
      
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 70.0,
        width: double.infinity,
         decoration: BoxDecoration(
         color: Color.fromRGBO(231, 243, 255, 1),
          borderRadius: BorderRadius.circular(15.0
          ),
          ),
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Invite a Seller",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.share,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),
      ],
      ),
      ],
    ),
    );
  }
}