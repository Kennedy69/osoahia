import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/settingscreen.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

 
  @override
  Widget build(BuildContext context) {
    return 
       ListView(
      
       shrinkWrap: true,
       
       children: [

        SizedBox(
          height: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            
          children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
          width: 160.0,
          height: 170.0,
          
          decoration: BoxDecoration(
            color: Color.fromRGBO(178, 208, 238, 1),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Color.fromRGBO(178, 208, 238, 1),
                  style: BorderStyle.solid,
                  width: 1.5,
                ),
              ),
            
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                CircleAvatar(
                   backgroundColor: Color.fromRGBO(72, 160, 242, 1),
                   radius: 18.0,
                    child: Icon(
                    Icons.attach_money_rounded
                      ),
                  ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text("£ 400.00",style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 ),
                 ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text("Total Sales",style: TextStyle(
                 color: Color.fromRGBO(72, 160, 242, 1),
                 fontSize: 16.0,
                 fontWeight: FontWeight.bold,
                 ),
                 ),
               ],
              ),
            ),
          
        
          ),
        
           Container(
          width: 160.0,
          height: 170.0,
          
          decoration: BoxDecoration(
            color: Color.fromRGBO(178, 208, 238, 1),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Color.fromRGBO(178, 208, 238, 1),
                  style: BorderStyle.solid,
                  width: 1.5,
                ),
              ),
            
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                CircleAvatar(
                   backgroundColor: Color.fromRGBO(255, 0, 0, 1),
                   radius: 18.0,
                    child: Icon(
                    Icons.cancel,
                      ),
                  ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text(" 4 ",style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 ),
                 ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text("Cancelled",style: TextStyle(
                 color: Color.fromRGBO(255, 0, 0, 1),
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

            SizedBox(
        height: 25.0,
        ),
        
               Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
          width: 160.0,
          height: 170.0,
          
          decoration: BoxDecoration(
            color: Color.fromRGBO(178, 208, 238, 1),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Color.fromRGBO(178, 208, 238, 1),
                  style: BorderStyle.solid,
                  width: 1.5,
                ),
              ),
            
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                CircleAvatar(
                   backgroundColor: Color.fromRGBO(61, 181, 80, 1),
                   radius: 18.0,
                    child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                      ),
                  ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text(" 60 ",style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 ),
                 ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text("Sold Items",style: TextStyle(
                 color: Color.fromRGBO(61, 181, 80, 1),
                 fontSize: 16.0,
                 fontWeight: FontWeight.bold,
                 ),
                 ),
               ],
              ),
            ),
          
        
          ),
        
           Container(
          width: 160.0,
          height: 170.0,
          
          decoration: BoxDecoration(
            color: Color.fromRGBO(178, 208, 238, 1),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Color.fromRGBO(178, 208, 238, 1),
                  style: BorderStyle.solid,
                  width: 1.5,
                ),
              ),
            
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 18.0,
                    child: Icon(
                    Icons.list,
                    color: Colors.black,
                      ),
                  ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text("40 ",style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 ),
                 ),
        
                  SizedBox(height: 10.0,),
                
            
                 Text("Orders Received",style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 1),
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
              SizedBox(height: 50.0,),

              Text("Recent Orders",style: TextStyle(
               fontSize: 22.0,
               color: Color.fromRGBO(0, 0, 0, 1),
               fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              )
            ],
          ),
        ),
       ],
      );

    
    
  }
}