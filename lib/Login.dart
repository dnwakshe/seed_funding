import 'package:seed_funding/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Login extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  final password = new TextEditingController();
  final email= new TextEditingController();
  //Login({ Key key, this.password.text, this.email.text}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: new InkWell(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Index()
              ),
            );
          },
          child: Container(
            height: 100,
            width: Get.width,
            decoration: BoxDecoration(

              color: Colors.amberAccent[700],
              border:Border.all(color:Colors.white,width: 5, ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            ),
          ),


        ),
      ),



      body:Padding(
        padding: const EdgeInsets.all(35.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Text formating
              SizedBox(height: 35,),
              Text(
                'Log in to get started',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black26,
                ),
              ),

              SizedBox(height: 25,),

              Text(
                'Experience the all new App!',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black26,
                ),
              ),

              SizedBox(height: 25,),

              // Log in with e mail id

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorHeight: 35,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 30.0,color: Colors.black26,),
                    hintText: "Email ID",

                    enabledBorder: UnderlineInputBorder(),
                    prefixIcon:
                    Icon(
                      Icons.email_outlined,
                      color: Colors.black26,
                      size: 50,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(email != value){
                      return 'Enter valid email.';
                    }
                    return null;
                  },
                ),

              ),

              SizedBox(height: 30,),

              // password

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorHeight: 35,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 30.0,color: Colors.black26,),
                    hintText: ' Password' ,
                    enabledBorder: UnderlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.https,
                      color: Colors.black26,
                      size: 50,
                    ),
                  ),
                  obscureText: true,
                  validator: (value){
                    if(password != value){
                      return 'Enter valid password.';
                    }
                    return null;
                  },
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}




