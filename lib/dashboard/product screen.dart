import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/addnew.dart';
import 'package:osoahia/dashboard/sellerproduct.dart';



class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
    
    
    ListView(
    shrinkWrap: true,
    children: [
    
     SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            
            controller: searchController,
            onChanged: (value) {
              print(value);
                     (value);
            },
           decoration: 
           
           
           InputDecoration(
            
            fillColor: Color.fromRGBO(255, 255, 255, 1),
            filled: true,
            hintText: "Search Products",
            hintStyle: TextStyle(
              color: Color.fromRGBO(160, 160, 160, 1),
              fontWeight: FontWeight.bold
            ),
            
            border: OutlineInputBorder(
             
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                
              ),
              
            ),
           ), 
           
           textAlign: TextAlign.center,
          ),
        ),

        SizedBox(height: 30.0),

     GestureDetector(
        onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddProduct();
            }));
        },
       child: Center(
        child: Text("Add New Products +",style: TextStyle(
        color: Color.fromRGBO(72, 160, 242, 1),
        fontSize: 15.0,
        fontWeight: FontWeight.bold
        ),
        ),
        ),
     ),
      

      SizedBox(height: 40.0),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
        color: Color.fromRGBO(231, 243, 255, 1),
        borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          
        width: 60.0,
        height: 70.0,
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
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // SizedBox(height: 20.0,),

      Text("Product name here",style: TextStyle(
      color: Color.fromRGBO(72, 160, 242, 1),
      fontSize: 17.0,
      fontWeight: FontWeight.bold
      ),
      ),

      // SizedBox(height: 20.0,),

      
      Text("Category",style: TextStyle(
      color: Color.fromRGBO(160, 160, 160, 1),
      fontSize: 15.0,
      fontWeight: FontWeight.bold
      ),
      ),
      ],
      ),

        Text("20 ",style: TextStyle(
      color: Color.fromRGBO(72, 160, 242, 1),
      fontSize: 30.0,
      fontWeight: FontWeight.bold
      ),
      ),
      
      
        ],
        
        ),
        
        ),
      ),

      SizedBox(height: 12.0,),

    Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
        color: Color.fromRGBO(231, 243, 255, 1),
        borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          
        width: 60.0,
        height: 70.0,
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
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // SizedBox(height: 20.0,),

      Text("Product name here",style: TextStyle(
      color: Color.fromRGBO(72, 160, 242, 1),
      fontSize: 17.0,
      fontWeight: FontWeight.bold
      ),
      ),

      // SizedBox(height: 20.0,),

      
      Text("Category",style: TextStyle(
      color: Color.fromRGBO(160, 160, 160, 1),
      fontSize: 15.0,
      fontWeight: FontWeight.bold
      ),
      ),
      ],
      ),

        Text("20 ",style: TextStyle(
      color: Color.fromRGBO(72, 160, 242, 1),
      fontSize: 30.0,
      fontWeight: FontWeight.bold
      ),
      ),
      
      
        ],
        
        ),
        
        ),
      ),

      SizedBox(height: 12.0,),

    Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
           return SellerProduct();
            }));
          },
          child: Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
          color: Color.fromRGBO(231, 243, 255, 1),
          borderRadius: BorderRadius.circular(15.0)
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            
          width: 60.0,
          height: 70.0,
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
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          // SizedBox(height: 20.0,),
        
              Text("Product name here",style: TextStyle(
              color: Color.fromRGBO(72, 160, 242, 1),
              fontSize: 17.0,
              fontWeight: FontWeight.bold
              ),
              ),
        
              // SizedBox(height: 20.0,),
        
              
              Text("Category",style: TextStyle(
              color: Color.fromRGBO(160, 160, 160, 1),
              fontSize: 15.0,
              fontWeight: FontWeight.bold
              ),
              ),
              ],
              ),
        
          Text("20 ",style: TextStyle(
              color: Color.fromRGBO(72, 160, 242, 1),
              fontSize: 30.0,
              fontWeight: FontWeight.bold
              ),
              ),
              
              
          ],
          
          ),
          
          ),
        ),
      ),


      
  
    ],
    );

    
  }
}