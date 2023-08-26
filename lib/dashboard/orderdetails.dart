import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/allchat.dart';
import 'package:osoahia/dashboard/storeorders.dart';


class OrderDetial extends StatefulWidget {
  const OrderDetial({super.key});

  @override
  State<OrderDetial> createState() => _OrderDetialState();
}

class _OrderDetialState extends State<OrderDetial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      automaticallyImplyLeading: false,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
       GestureDetector(
        onTap: () {
         
        },
         child: Row(
           children: [
             GestureDetector(
              onTap: () {
                Navigator.of(context).pop(MaterialPageRoute(builder: (context){
                  return StoreOrder();
                }));
              },
               child: Text("Back",style: TextStyle(
                   color: Color.fromRGBO(72, 160, 242, 1),
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
               ),
               ),
             ),

             SizedBox(width: 60.0,),

             Text("Order Number",style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
             ),
             ),
           ],
         ),
       ),

          // Center(
          //   child:  Text("Order Number",style: TextStyle(
          //        color: Color.fromRGBO(0, 0, 0, 1),
          //        fontSize: 30,
          //        fontWeight: FontWeight.bold,
          //    ),
          //    ),
          // ),
      ],
      ),

    ),  

    body: ListView(
    children: [
      SizedBox(height: 40.0),
       Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Container(
                     height: 110.0,
                     width: double.infinity,
                     decoration: BoxDecoration(
                     color: Color.fromRGBO(231, 243, 255, 1),
                     borderRadius: BorderRadius.circular(15.0),
                     
                     ),
                     
                child: 
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                          children: [
                          Text("Total Amount N6000",style: TextStyle(
                          color: Color.fromRGBO(72, 160, 242, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                            
                          //  Text("N50000.00",style: TextStyle(
                          // color: Color.fromRGBO(72, 160, 242, 1),
                          // fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          // ),
                          // ),
                            
                          
                          ],
                          ),
                    
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: double.infinity,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text("Item:2",style: TextStyle(
                              color: Color.fromRGBO(160, 160, 160, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              ),
                              ),
                                          
                               Text("Pending",style: TextStyle(
                          color: Color.fromRGBO(255, 165, 0, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                                          
                              Text("August 12, 2023",style: TextStyle(
                              color: Color.fromRGBO(160, 160, 160, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              ),
                              ),
                              ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                 
                     
                     ),
                   ),
                   
                   Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                      width: 180,
                      height: 45,
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(width: 1.0,
                       color: Color.fromRGBO(72, 160, 242, 1),
                      ),
                      ),
                     child: Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                                        
                        
                        Center(
                          child: Text("Pending",style: TextStyle(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                          ),
                          ),
                        ) ,
                     
                        Icon(Icons.expand_more,
                        size: 18,
                        color: Color.fromRGBO(160, 160, 160, 1),
                     
                        ),
                       ],
                       ),
                     ),

                     

                      
                    
                    
                      ),
                    ),

                    Text("Chat with buyer",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(72, 160, 242, 1),
                    
                    ),
                    ),

                    SizedBox(width: 10.0,),

                    Icon(Icons.chat,
                    size: 30,
                    color: Color.fromRGBO(72, 160, 242, 1),

                    ),

                    ],
                   ),

                    SizedBox(height: 40.0),

      GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context){
              return AllChat();
          }));
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
          color: Color.fromRGBO(231, 243, 255, 1),
          borderRadius: BorderRadius.circular(15.0)
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
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
        Column(crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          SizedBox(height: 20.0,),
      
        Text("Product name here",style: TextStyle(
        color: Color.fromRGBO(72, 160, 242, 1),
        fontSize: 15.0,
        fontWeight: FontWeight.bold
        ),
        ),
      
        SizedBox(height: 20.0,),
      
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Quantity:4",style: TextStyle(
            color: Color.fromRGBO(160, 160, 160, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.bold
            ),
            ),
      
            SizedBox(width: 20.0,),
      
             Text("Unit Price:5000",style: TextStyle(
            color: Color.fromRGBO(160, 160, 160, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
        ],
        ),
      
         
        
        
          ],
          
          ),
          
          ),
        ),
      ),

      SizedBox(height: 20.0),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
        color: Color.fromRGBO(231, 243, 255, 1),
        borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
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
      Column(crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(height: 20.0,),

      Text("Product name here",style: TextStyle(
      color: Color.fromRGBO(72, 160, 242, 1),
      fontSize: 15.0,
      fontWeight: FontWeight.bold
      ),
      ),

      SizedBox(height: 20.0,),

      
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Quantity:4",style: TextStyle(
          color: Color.fromRGBO(160, 160, 160, 1),
          fontSize: 15.0,
          fontWeight: FontWeight.bold
          ),
          ),

          SizedBox(width: 20.0,),

           Text("Unit Price:5000",style: TextStyle(
          color: Color.fromRGBO(160, 160, 160, 1),
          fontSize: 15.0,
          fontWeight: FontWeight.bold
          ),
          ),
        ],
      ),
      ],
      ),

       
      
      
        ],
        
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