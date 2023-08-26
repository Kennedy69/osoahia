import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/addnew.dart';
import 'package:osoahia/dashboard/product%20screen.dart';


class SellerProduct extends StatefulWidget {
  const SellerProduct({super.key});

  @override
  State<SellerProduct> createState() => _SellerProductState();
}

class _SellerProductState extends State<SellerProduct> {
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
            return ProductScreen();
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
      SizedBox(height: 30.0,),
      Column(

        
     children: [
      Container(
        height: 180.0,
        width: 150.0,
        decoration: BoxDecoration(
        color: Color.fromRGBO(231, 243, 255, 1),
        image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
        "https://static.miinto.net/5b23abed3841acb5db93de2cef98537f.webp?width=400&height=600&title=women-clothing-dress-blue-ss23"
                                 
        ),
        ),
       ),

      ),

       SizedBox(height: 30.0),

     GestureDetector(
      onTap: () {
          
          },
       child: Row(
         children: [
           Center(
            child: Text("Change Product Image ",style: TextStyle(
            color: Color.fromRGBO(72, 160, 242, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.bold
            ),
            ),
     
            
     
            
            ),
     
            SizedBox(width: 15.0,),
            Icon(Icons.image_aspect_ratio_outlined,
            size:25 ,
            color:Color.fromRGBO(72, 160, 242, 1) ,
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
          Text("Name of Products Here",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.edit,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),

      SizedBox(
        height: 8.0,
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
          Text("Category",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.edit,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),

       SizedBox(
        height: 8.0,
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
          Text("Amount",style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
          ),
          ),
              
          Icon(Icons.edit,
          size: 45.0,
          color: Color.fromRGBO(255, 165, 0, 1),
          ),
          ],
          ),
        ),
        ),
      ),

       SizedBox(
        height: 8.0,
        ),

          Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          
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
            Text("Edit Product Details",style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 18.0,
            fontWeight: FontWeight.bold
            ),
            ),
                
            Icon(Icons.edit,
            size: 45.0,
            color: Color.fromRGBO(255, 165, 0, 1),
            ),
            ],
            ),
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