

import 'package:flutter/material.dart';
import 'package:osoahia/auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:osoahia/dashboard/dashboard.dart';
import 'package:osoahia/dashboard/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final registerKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController(); 
  TextEditingController storenameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();

  bool showPassword = false;
  bool isLoading = false;
  


  showIcon(){
    if(showPassword == true){
      return GestureDetector(
        onTap: () {
          setState(() {
            showPassword = !showPassword;
          });
        },
        child:  Icon(
                Icons.visibility,size:40.0,
                color: Colors.grey,
                ),
         );
    }
    else{
      return GestureDetector(
        onTap: () {
          setState(() {
            showPassword = !showPassword;
          });
        },
        child: Icon(Icons.visibility_off,
        size:40.0, color: Colors.grey,
        ),
      );
    }
   }

   signUp() async{
    setState(() {
      isLoading = true;
    });
    try{

    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword
      (email: emailController.text, 
      password: passwordController.text,

    
      
    );

    final user = FirebaseAuth.instance.currentUser;

     if(user !=null){
      await user.updateDisplayName(storenameController.text);

      await FirebaseFirestore.instance.collection("stores").
      doc(emailController.text).
      set({
        "name":storenameController.text,
        "email":emailController.text,
        "phone":phonenumberController.text,
      }).then((documentSnapshot) {


        setState(() {
          
          emailController.text = "";
          storenameController.text = "";
          passwordController.text = "";
          phonenumberController.text = "";
          isLoading = false;
          
         

        });
      });
      
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      
      return Home();
      }));
      }

    



    }
     on FirebaseAuthException catch(e) {
      if(e.code == "weak-password"){
         ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Password is too weak",style: TextStyle(
              color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
          ),
          );
      }
      else if(e.code == "email-already-in-use"){
         ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Email Already Exist, used different mail",style: TextStyle(
              color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
          ),
          );
      }
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
            
            child: Text("Launch into Success with Osoahia ",
             style: TextStyle(
              color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,
             ),
          
            ),
          ),

           Center(
            child: Text("Ready, Set, Go! ",
             style: TextStyle(
              color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,
             ),
          
            ),
          ),

          
          SizedBox(
            height: 30.0,
          ),

          Form(
          key: registerKey,

          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                  
                      
                      
                  controller: storenameController,
                      
                  
                 style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                   
                      ),
                  decoration: InputDecoration(
                  
                  hintText: "Enter Store Name",
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
                  return "storename is required";
                }
                return null;
              },
                  
                  
                    ),

                   SizedBox(
                    height: 30.0,
                   ),

                   TextFormField(
                    textAlign: TextAlign.center,
                    controller:emailController,
                  
                      
                      
                  keyboardType: TextInputType.emailAddress,
                      
                  
                   style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                      ),
                  decoration: InputDecoration(
                  
                  hintText: "Enter Email Address",
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
                    height: 30.0,
                   ),

                   TextFormField(
                    textAlign: TextAlign.center,
                    controller:phonenumberController,
                    keyboardType: TextInputType.phone,
                  
                      
                      
                 
                      
                  
                   style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                      ),
                  decoration: InputDecoration(
                  
                  hintText: "Enter Phone Number",
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
                  return "Phone number is required";
                }
                else if(value.length < 11){
                return "Phone number should be 11 characters";
                }
                else if(value.length > 11){
                return "phone number should not be more than 11 character";
                }
                return null;
              },
                  
                  
                    ),

                  
                     SizedBox(
                    height: 30.0,
                   ),

                   TextFormField(
                    textAlign: TextAlign.center,
                    controller:passwordController,
                  
                      
                      
                  
                      
                  
                  style: TextStyle(
                     color: Color.fromRGBO(160, 160, 160, 1),
                     
                  
                   fontWeight: FontWeight.w600,
                      ),
                  decoration: InputDecoration(
                  
                   prefixIcon: Icon(Icons.lock,
                color: Colors.grey,
                size: 40.0,
                ),
                suffixIcon: showIcon(),
                  
                  hintText: "Enter Secured Password",
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

                   obscureText: showPassword ? false : true,
              validator: (value) {
                if(value!.isEmpty){
                  return "Password is required";
                }
                else if(value.length < 8){
                return "Password should be 8 characters";
                }
              
                return null;
              },
                  
                  
                    ),

                   SizedBox(
                    height: 30.0
                    ),

                   GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Login();
                      }));
                    },
                     child: Text("Already a seller ? Login", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                         ),
                                     
                                   
                           textAlign: TextAlign.center,
                               ),
                   ),
                   
                   SizedBox(
                    height: 30.0
                    ),

                   GestureDetector(
                    onTap: () {
                      if (registerKey.currentState!.validate()){
                  // print("submitted");
                  signUp();
                  }
                    },
                     child: Container(
                                     alignment: Alignment.center,
                                    width: double.infinity,
                                    height:60.0,
                                   
                                    decoration: BoxDecoration(
                     color: Color.fromRGBO(255, 165, 0, 1),
                     borderRadius: BorderRadius.circular(15.0
                     ),
                     ),
                     child: Text("Create Store",style:TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold, fontSize: 23.0,
                     ) ,
                     ) ,
                                   ),
                   ),

                  

                  

                  

                  
                    

            
                  ]
              ),
          ),
            ),

      ],

       ),
    
    );
  }
}