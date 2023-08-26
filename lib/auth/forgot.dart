import 'package:flutter/material.dart';
import 'package:osoahia/auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final forgotKey = GlobalKey<FormState>();
   TextEditingController emailController = TextEditingController();

   forgot() async{


  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text);

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Password Reset has been sent to your email",style: TextStyle(
              color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.green,
          ),
          );

          Navigator.pop(context);

    }
    on FirebaseAuthException catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Email not registered",style: TextStyle(
              color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
          ),
          );

  }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  backgroundColor: Color.fromRGBO(72, 160, 242, 1),


  body: ListView(
  shrinkWrap: true,
  children: [
   SizedBox(
   height: 150.0
    ),
  
   Center(
            
            child: Text("Lost Access? Retrieve Your Osoahia ",
             style: TextStyle(
              color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,
             ),
          
            ),
            
            

            
          ),
          Center(
            child: Text(" Account Now! ",
             style: TextStyle(
              color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,
             ),
          
            ),
          ),
    
     SizedBox(
            height: 40.0,
          ),
     
     Form(
     key:forgotKey ,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         TextFormField(
                    textAlign: TextAlign.center,
                  
                      
                      
                  keyboardType: TextInputType.emailAddress,
                      
                  controller: emailController,
                  style: TextStyle(
                     
                  color: Colors.grey,
                   fontWeight: FontWeight.w600,
                      ),
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail,color: Colors.grey,size: 40.0,
                  ),
                  hintText: "Email Address",
                  hintStyle:  TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontSize: 22.0,fontWeight: FontWeight.bold
              
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
      
                    border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                    ),
              
                  ),

                   validator: (value) {
                if(value!.isEmpty){
                  return "email address is required";
                }
                else if(!value. contains("@")){
                return "Invalid Email address , @ is required" ;
                }
                
                return null;
              },
                  
                  
                    ),
          
           SizedBox(
            height: 45.0
            ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Login();
              }));
            },
            child: Text("Back To Login ", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                         ),
                    
                                   
                           textAlign: TextAlign.center,
                               ),
          ),
          
          
           SizedBox(
            height: 47.0
            ),

          GestureDetector(
            onTap: () {
              if (forgotKey.currentState! .validate()){
                  // print("submitted Login successful");
                forgot();
                  }
            },
            child: Container(
                    alignment: Alignment.center,
                   width: double.infinity,
                   height:65.0,
                  
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(255, 165, 0, 1),
                     borderRadius: BorderRadius.circular(15.0
                     ),
                     ),
                     child: Text("Validate Email",style:TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25.0,
                     ) ,
                     ) ,
                  ),
          ),
                


      
        ],
      
      
        ),
      )
      ),
      
    

  

   
  ],

  ),
    );
  }
}