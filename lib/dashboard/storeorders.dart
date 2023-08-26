import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/orderdetails.dart';



class StoreOrder extends StatefulWidget {
  const StoreOrder({super.key});

  @override
  State<StoreOrder> createState() => _StoreOrderState();
}

class _StoreOrderState extends State<StoreOrder> {
  @override
  Widget build(BuildContext context) {
    return ListView(
    shrinkWrap: true,
    children: [

    Column(
      
    children: [
      SizedBox(height: 25.0,),
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

      SizedBox(height: 30.0,),

      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
        height: 100.0,
        width: double.infinity,
        decoration: BoxDecoration(
        color: Color.fromRGBO(231, 243, 255, 1),
        borderRadius: BorderRadius.circular(15.0),
        
        ),
        
          child: 
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Order Number",style: TextStyle(
                    color: Color.fromRGBO(72, 160, 242, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                      
                     Text("N50000.00",style: TextStyle(
                    color: Color.fromRGBO(72, 160, 242, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                      
                    
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
                                    
                      SizedBox(width: 30.0,),
                          
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

      SizedBox(height: 10.0,),

         Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
        height: 100.0,
        width: double.infinity,
        decoration: BoxDecoration(
        color: Color.fromRGBO(231, 243, 255, 1),
        borderRadius: BorderRadius.circular(15.0),
        
        ),
        
          child: 
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Order Number",style: TextStyle(
                    color: Color.fromRGBO(72, 160, 242, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                      
                     Text("N50000.00",style: TextStyle(
                    color: Color.fromRGBO(72, 160, 242, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                      
                    
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

                        SizedBox(width: 30.0,),

                          // SizedBox(width: 40,) ,    
                        Text("Completed",style: TextStyle(
                        color: Color.fromRGBO(61, 181, 80, 1),
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

      SizedBox(height: 10.0,),

         GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return OrderDetial();
            }));
          },
           child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Container(
                 height: 100.0,
                 width: double.infinity,
                 decoration: BoxDecoration(
                 color: Color.fromRGBO(231, 243, 255, 1),
                 borderRadius: BorderRadius.circular(15.0),
                 
                 ),
                 
            child: 
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Order Number",style: TextStyle(
                      color: Color.fromRGBO(72, 160, 242, 1),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                        
                       Text("N50000.00",style: TextStyle(
                      color: Color.fromRGBO(72, 160, 242, 1),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                        
                      
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

                          SizedBox(width: 30.0,),
                                      
                          Text("Cancelled",style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
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
         ),
    ],
    ),
    ],
    );

    
  }
}