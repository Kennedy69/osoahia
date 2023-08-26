import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/product%20screen.dart';
import 'package:osoahia/dashboard/settingscreen.dart';


class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {

  final accountKey = GlobalKey<FormState>();
   TextEditingController firstnameController = TextEditingController();
    TextEditingController lastnameController = TextEditingController();
     TextEditingController emailController = TextEditingController();
      TextEditingController ageController = TextEditingController();
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
          return SettingScreen();
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
    SizedBox(
    height:10.0 

    

      ),

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

      SizedBox(height: 40.0,),
      
          Form(
            key: accountKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
              children: [
                TextFormField(
                  controller: firstnameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Enter UserName",
                    hintStyle: TextStyle(
                      color: Colors.grey,fontSize: 16.0, fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color.fromRGBO(72, 160, 242, 1),
                      width: 1.0,
                      
                      ),
                      
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return " Username is required";
                    }
                    return null;

                  },
                ),

               SizedBox(height: 20.0,),

               

                TextFormField(
                  controller: lastnameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Enter Email Address",
                    hintStyle: TextStyle(
                      color: Colors.grey,fontSize: 16.0, fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color.fromRGBO(72, 160, 242, 1),
                      width: 1.0,
                      
                      ),
                      
                    ),
                  ),

                   validator: (value) {
                    if(value!.isEmpty){
                      return "Email address is required";
                    }
                    return null;

                  },
                ),

                SizedBox(height: 20.0,),

                

                 TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(
                      color: Colors.grey,fontSize: 16.0, fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color.fromRGBO(72, 160, 242, 1),
                      width: 1.0,
                      
                      ),
                      
                    ),
                  ),

                   validator: (value) {
                    if(value!.isEmpty){
                      return "phone number is required";
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
               
              
              SizedBox(height: 20.0,),

               TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: ageController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(
                      color: Colors.grey,fontSize: 16.0, fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color.fromRGBO(72, 160, 242, 1),
                      width: 1.0,
                      
                      
                      ),
                      
                    ),
                  ),

                   
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

                
              SizedBox(height: 50.0,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductScreen();
                  }));
                  
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
                child: Text("Update Account",style:TextStyle(
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