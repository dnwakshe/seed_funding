import 'dart:convert';


import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';





class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  initState(){
    super.initState();    
  }

  @override
  Widget build(BuildContext context) {

    
        return Scaffold(      
          appBar: AppBar(
            
            title: Text('Seed Funding '),
            
          
           
      ),
      //============================> Bottom Bar Start<=================================
        bottomNavigationBar: BottomNavigationBar(
          items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.green,
              ),

              
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.green,              
              ),
          ],
          ) ,
      //============================> Drawee Start<=================================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, 
          children: [
              UserAccountsDrawerHeader(
                accountName: Text('Dnyaneshwar Wakshe'), 
                accountEmail: Text('wakshe2@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text('D',
                  style: TextStyle(fontSize: 40),),
                ),
              ),
              //============================> Inner List Start<=================================
              ListTile(
                leading: Icon(Icons.home,),title: Text('Home'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('About Us'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),

              

            
          ],
        ),
      ),
      
      //============================> Drawee Close<=================================
      // body:
      //   Center(        
          
      //         child: 
      //             InkWell(
      //                         child: Container(
      //                 height: 110, 
                        
      //                 child: Card(
      //                         child: Column(
      //                             children: [
      //                             Container( 
                                                      
      //                               child: IconButton(
      //                               icon: Image.asset('images/twitter_icon.png',),            
      //                               iconSize: 60,      
                                                      
      //                               onPressed: (){
      //                                   Navigator.of(context)
      //                                     .push(MaterialPageRoute(builder:(_)=>Web()));
                                        
      //                               }
      //                   ),       
                        
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.only(bottom: 8.0),
      //                     child: Text('Go to Web'),
      //                   ),
      //                           ],
      //                         ),
                        
      //                 ),
                      
      //               ),
      //               onTap:(){
      //               Navigator.of(context)
      //               .push(MaterialPageRoute(builder:(_)=>Web()));
      //               },
      //               ),
      //           ),

        
         
        body:  SingleChildScrollView(
                  child: Column(
                        children: [
                                  
                                Center(                                
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    
                                       child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          //============== Owner Container ==========
                                            Container(                                   
                                                  height: 200,
                                                  width: 500,                                  
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black,
                                                        offset: const Offset(
                                                          5.0,
                                                          5.0
                                                          ),
                                                          blurRadius: 5,
                                                      ), 
                                                    ]
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text("Hello world"),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 10,),
                                          //============== Post Container1 ============
                                                Container(                                   
                                                  height: 700,
                                                  width: 500,                                  
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black,
                                                        offset: const Offset(
                                                          5.0,
                                                          5.0
                                                          ),
                                                          blurRadius: 10,
                                                      ), 
                                                    ]
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Row(
                                                          children: [
                                                           CircleAvatar(                                                             
                                                             backgroundColor: Colors.amber,
                                                             child: Text("D"),
                                                           ),
                                                           
                                                           Column(
                                                             children: [
                                                               //========= Owner name ======
                                                               Padding(
                                                                 padding: const EdgeInsets.all(8.0),
                                                                 child: Text("Dnyaneshwar Wakshe", style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                                                               ),
                                                                 // ======== subtitle ======
                                                               Padding(
                                                                  padding: const EdgeInsets.all(1.0),
                                                                  child: Text("Software Developer", style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                                                ),   
                                                             ],
                                                           ),
                                                          ],
                                                        ),
                                                      ),
                                                      //========== post caption ======
                                                      Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Text("This my first post in seed funding portal", style: TextStyle(color: Colors.black,fontSize: 15,),),
                                                                    ),
                                                        ],
                                                      ), 
                                                      // for single post sigle image asset view and for multiple photos carousel should  used 
                                                      
                                                          Container(
                                                            height: 200,
                                                            padding: EdgeInsets.all(8.0),
                                                            child: Image(image: AssetImage('images/flutter.jpg'),),
                                                            ),
                                                        


                                                    ],
                                                  ),
                                                ),
                                                 SizedBox(height: 10,),

                                            //============== Post Container2 ============
                                                Container(                                   
                                                  height: 700,
                                                  width: 500,                                  
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(15),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black,
                                                        offset: const Offset(
                                                          5.0,
                                                          5.0
                                                          ),
                                                          blurRadius: 10,
                                                      ), 
                                                    ]
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text("Hello world"),
                                                    ],
                                                  ),
                                                ),
                                                 SizedBox(height: 10,),





                                        ],
                                      ),
                                   
                                  ),
                                ),


                                ],
                              ),
        ),

                              


            
       
                     
    );
  }

}