import 'package:flutter/material.dart';


class AllChat extends StatefulWidget {
  const AllChat({super.key});

  @override
  State<AllChat> createState() => _AllChatState();
}

class _AllChatState extends State<AllChat> {

  TextEditingController searchproductController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  backgroundColor: Color.fromRGBO(231, 243, 255, 1),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(231, 243, 255, 1),
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
      Text("All Chats",style:
       TextStyle(
      color: Color.fromRGBO(72, 160, 242, 1),
      fontSize: 25.0,
      fontWeight: FontWeight.bold

       ),
      ),

     
        ],
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right:25.0),
          child: GestureDetector(
            onTap: () {
             
            },
            child: Icon(
            Icons.notification_add,
            size: 45.0,
            color: Color.fromRGBO(255, 165, 0, 1),
                  
              ),
          ),
        ),
      ],
          
    ),

    body: Column(
    children: [
       SizedBox(
          height: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: searchproductController,
            onChanged: (value) {
              print(value);
                     (value);
            },
           decoration: InputDecoration(
            fillColor: Color.fromRGBO(255, 255, 255, 1),
            filled: true,
            hintText: "Search Products",
            hintStyle: TextStyle(
              color: Color.fromRGBO(160, 160, 160, 1),
              fontWeight: FontWeight.bold
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide()
              // gapPadding: 2.5,
            ),
           ), 
           textAlign: TextAlign.center,
          ),
        ),
    ],
    ),
    );
  }
}