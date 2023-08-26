import 'package:flutter/material.dart';
import 'package:osoahia/auth/forgot.dart';
import 'package:osoahia/auth/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:osoahia/dashboard/dashboard.dart';
import 'package:osoahia/dashboard/home.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController(); 

  bool showPassword = false;


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

   signIn() async{

   try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text
  );

  final user = FirebaseAuth.instance.currentUser;

  if (user !=null){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return Home();
    }));
  }

 } on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "User not found",style: TextStyle(
              color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
          ),
          );
    // print('No user found for that email.');
  } else if (e.code == 'wrong-password') {

    // print('Invalid Password');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Invalid Password",style: TextStyle(
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
    

       body:ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 150.0
            ),
          Center(
            
            child: Text("Embark on Your Journey with Osoahia ",
             style: TextStyle(
              color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,
             ),
          
            ),
            
            

            
          ),
          Center(
            child: Text(" Let's Begin! ",
             style: TextStyle(
              color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,
             ),
          
            ),
          ),

          SizedBox(
            height: 30.0,
          ),

          Form(
            key: loginKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                TextFormField(
                  textAlign: TextAlign.center,
                
                    
                    
                keyboardType: TextInputType.emailAddress,
                    
                controller: emailController,
                style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
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
                    height: 25.0
                    ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Forgot();
                      }));
                    },
                    child: Text("Forgot Pasword ", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                       ),
                  
                                 
                         textAlign: TextAlign.center,
                             ),
                  ),

                            SizedBox(
                    height: 25.0
                    ),

                
            TextFormField(
                  textAlign: TextAlign.center,
                
                    
                    
                keyboardType: TextInputType.emailAddress,
                    
                controller: passwordController,
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
                        return Register();
                      }));
                    },
                    child: Text("Not a seller yet ? Register ", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                       ),
                  
                                 
                         textAlign: TextAlign.center,
                             ),
                  ),

                     SizedBox(height: 120.0
                     ),


                     GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context){
                        //   return DashBoard();
                        // }));
                        if(loginKey.currentState!.validate()){
                          signIn();
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
                                        child: Text("Start Selling",style:TextStyle(
                                         color: Colors.white,fontWeight: FontWeight.bold, fontSize: 23.0,
                                        ) ,
                                        ) ,
                                     ),
                     ),
                
                   
                ],
              ),
            ),
            ),
        ],
      ),
    );
  }
}