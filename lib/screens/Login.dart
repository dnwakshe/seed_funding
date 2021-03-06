import 'package:flutter/material.dart';
import 'package:seed_funding/screens/home.dart';
import 'package:seed_funding/screens/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Login extends StatelessWidget { 
  TextEditingController email = TextEditingController();
  TextEditingController password =TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLogin = false;
  
  var _formKey = GlobalKey<FormState>();
  void login()async{

    try {
          UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email:email.text,
          password: password.text,
        );
        if(userCredential.user!=null){
          isLogin=true;
         

        }
        
        }  
    on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
    print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
   }
}
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      
      body: 
      Form(
        key: _formKey,
        child:  Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
                [
                  Text('LOGIN',
                  style: TextStyle(fontSize: 40, color: Colors.grey.shade500,fontWeight: FontWeight.bold ),),
                  SizedBox(height: 60),
                   TextFormField(        
                     keyboardType: TextInputType.emailAddress,             
                     decoration: InputDecoration(  
                       filled: true,
                                                                   
                       hintStyle: TextStyle(fontSize: 20.0,color: Colors.black38 , fontWeight: FontWeight.normal,),
                       hintText: 'Emain ID',                        
                       contentPadding: EdgeInsets.only(top:30,bottom:30,left:40,),
                       fillColor: Colors.grey.shade300,
                       border: new OutlineInputBorder(
                       borderRadius: BorderRadius.circular(40.0),   
                       borderSide: BorderSide.none    
                                                               
                       ), 
                     ),
                     
                     controller: email,
                   ), 
                   SizedBox(height: 40),
                   TextFormField(        
                     keyboardType: TextInputType.emailAddress,             
                     decoration: InputDecoration(       
                       filled: true,                                         
                       hintStyle: TextStyle(fontSize: 20.0,color: Colors.black38 , fontWeight: FontWeight.normal,),
                       hintText: 'Password',                        
                       contentPadding: EdgeInsets.only(top:30,bottom:30,left:40,),
                       fillColor: Colors.grey.shade300,
                       border: new OutlineInputBorder(
                       borderRadius: BorderRadius.circular(40.0),   
                        borderSide: BorderSide.none                                                 
                       ), 
                     ),
                     controller:  password,
                   ), 
                   SizedBox(height: 80),
                   
                    FlatButton(
                        onPressed: (){ 
                           print("===================>"); 
                          print(email);
                           print(password);
                          login();
                                if(isLogin){
                                  
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Index()),); 
                                }
                                else{
                                  Fluttertoast.showToast(
                                        msg: "Please Enter Correct Email Id and Password..",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0
                                    );
                                }        
                          },
                        height: 80,
                        minWidth: 600,
                        color: Colors.blue[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40),
                        ),
                      child: Text(
                          'Login',
                      style:TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                      ),
                  ),
                  
                  Column(

                    mainAxisAlignment: MainAxisAlignment.end,
                    
                    children: [
                      SizedBox(height: 100),
                      Text(
                        'Already do not have an account?',
                        style: TextStyle(fontSize:20 ),
                        ),
                        GestureDetector(
                              child: Text('Create Accout',
                                  style: 
                                  TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline 
                                    ),

                              ),
                              onTap: (){
                              Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),);
                              },
                            ),

                    
                    ],
                  ),

                   
                 
                ],
                 
            ),
            
          ),
        
      ),
      
    );
  }
}