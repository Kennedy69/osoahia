import 'package:flutter/material.dart';
import 'package:osoahia/dashboard/product%20screen.dart';
import 'package:osoahia/dashboard/sellerproduct.dart';
import 'package:osoahia/dashboard/storeorders.dart';


class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  
  final newKey = GlobalKey<FormState>();

  String categoryValue = "";
   String subcategoryValue = "";
   String colordropdownValue ="";


   TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController(); 

  TextEditingController quantityController = TextEditingController(); 
  TextEditingController stocklistController = TextEditingController(); 
  TextEditingController descriptionController = TextEditingController(); 
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
            return SellerProduct();
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
        SizedBox(height: 20.0,),

      Form(
        key: newKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              DropdownButtonFormField(
          
          value: colordropdownValue,
          alignment: Alignment.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
        
            )
          ),
          items: [
        
            DropdownMenuItem(
              child:Text("Select Color"),
              value: "",
              ),
        
            DropdownMenuItem(
              child:Text("Red"),
              value: "Red",
              ),
        
              DropdownMenuItem(
              child:Text("Blue"),
              value: "Blue",
              ),
        
              DropdownMenuItem(
              child:Text("Yellow"),
              value: "Yellow",
              ),
              
        
          ],
        
           validator: (value) {
            if (value!.isEmpty){
             return "Color must be selected";
            }
            return null;
           },
           onChanged:(newValue){
            setState(() {
              
              colordropdownValue = newValue!;
              print(colordropdownValue);
            });
        
             print(colordropdownValue);
        
           }
           ),

           SizedBox(height: 20.0,),

           DropdownButtonFormField(
          
          value: colordropdownValue,
          alignment: Alignment.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
        
            )
          ),
          items: [
        
            DropdownMenuItem(
              child:Text("Select Color"),
              value: "",
              ),
        
            DropdownMenuItem(
              child:Text("Red"),
              value: "Red",
              ),
        
              DropdownMenuItem(
              child:Text("Blue"),
              value: "Blue",
              ),
        
              DropdownMenuItem(
              child:Text("Yellow"),
              value: "Yellow",
              ),
              
        
          ],
        
          validator: (value) {
            if (value!.isEmpty){
              return "Color must be selected";
            }
            return null;
          },
           onChanged:(newValue){
            setState(() {
              
              colordropdownValue = newValue!;
              print(colordropdownValue);
            });
        
             print(colordropdownValue);
        
           }
           ),

           SizedBox(height: 20.0,),

           TextFormField(
                    // textAlign: TextAlign.center,
                  
                      
                      
                  controller:titleController,
                      
                  
                 style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                   
                      ),
                  decoration: InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Title",
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
                  return "Title is required";
                }
                return null;
              },
                  
                  
                    ),

                   SizedBox(
                    height: 20.0,
                   ),

                   TextFormField(
                    // textAlign: TextAlign.center,
                    controller:priceController,
                  
                      
                      
                  keyboardType: TextInputType.emailAddress,
                      
                  
                   style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                      ),
                  decoration:  InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Price",
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
                  return "Price is required";
                }
                
                
                return null;
              },
                  
                  
                    ),

                
                   SizedBox(
                    height: 20.0,
                   ),
                  

              Column(
                children: [
                  Text("Add Photos",style: TextStyle(
                  color: Color.fromRGBO(72, 160, 242, 1),
                  fontWeight:FontWeight.bold,
                  fontSize: 20,

                  ),
            
                  ),
                ],
              ),

               Text("Supported format, png,jpeg, jpg,",style: TextStyle(
              color: Color.fromRGBO(160, 160, 160, 1),
              fontWeight:FontWeight.bold,
              fontSize: 15,

              ),
            
              ),

              SizedBox(height:20.0),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Expanded(
                child: 
                   TextFormField(
                    // textAlign: TextAlign.center,
                    controller:priceController,
                  
                      
                      
                  keyboardType: TextInputType.emailAddress,
                      
                  
                   style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                      ),
                  decoration:  InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Quantity",
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
                  return "Quantity is required";
                }
                
                
                return null;
              },
                  
                  
                    ),
                ),

                SizedBox(width: 40.0),

                Expanded(
                  child: 
                   TextFormField(
                    // textAlign: TextAlign.center,
                    controller:priceController,
                  
                      
                      
                  keyboardType: TextInputType.emailAddress,
                      
                  
                   style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                      ),
                  decoration:  InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Stock Limit",
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
                  return "Stock Limit is required";
                }
                
                
                return null;
              },
                  
                  
                    ),
                  ),
                

               
                ],
              ),

              SizedBox(height:20.0),

              TextFormField(
                maxLines: 4,
                    textAlign: TextAlign.center,
                    controller:priceController,
                  
                      
                      
                  keyboardType: TextInputType.emailAddress,
                      
                  
                   style: TextStyle(
                
                   
                color: Color.fromRGBO(160, 160, 160, 1),
                 fontWeight: FontWeight.w600,
                      ),
                  decoration:  InputDecoration(
                    filled: true,
                   fillColor: Color.fromRGBO(255, 255, 255, 1),
                    hintText: "Product Description",
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
                  return "Product Description is required";
                }
                
                
                return null;
              },
                  
                  
                   
               ),

                SizedBox(height:20.0),
              

              
                     GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context){
                        //   return DashBoard();
                        // }));
                        if(newKey.currentState!.validate()){
                         Navigator.push(context,MaterialPageRoute(builder: (context){
                          return ProductScreen();
                         }));
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
                                        child: Text("Add Product",style:TextStyle(
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