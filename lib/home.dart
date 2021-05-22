//import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      appBar: AppBar(
        title: Text("Seed Funding"),
        ),
      
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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 400,
              //width: 500,
              child: ListView(
                                      children: [
                                        CarouselSlider(
                                          
                                          items: [
                                            Container( 
                                              margin: EdgeInsets.all(6.0),
                                              decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8.0),                            
                                              ),
                                              child: Image(image: AssetImage('images/startup-funding.jpg'),),
                                            ),

                                           Container( 
                                              margin: EdgeInsets.all(6.0),
                                              decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8.0),                            
                                              ),
                                              child: Image(image: AssetImage('images/opp.png',),),
                                            ),

                                            Container( 
                                              margin: EdgeInsets.all(6.0),
                                              decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8.0),                            
                                              ),
                                              child: Image(
                                                image: AssetImage('images/images_artiklar_Tillvaxt_liten.jpg'),
                                               
                                              ),
                                            ),

                                          ],
                                          
                                          options: CarouselOptions(
                                            height: 400.0,
                                              enlargeCenterPage: true,
                                              autoPlay: true,
                                              aspectRatio: 16/9,
                                              enableInfiniteScroll: true,                 
                                              viewportFraction: 0.8,

                                          ),
                                          
                                          ),
                                      ]
                                ),
            ),
          ),
          
          
          SingleChildScrollView(
                      child: Container(
              height: 500,
              child: GridView.extent(
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: 200.0,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),  
                    child: const Text('First', style: TextStyle(fontSize: 20)),  
                    color: Colors.yellow,  
                ),

                Container(
                  padding: const EdgeInsets.all(8),  
                    child: const Text('Second', style: TextStyle(fontSize: 20)),  
                    color: Colors.blue,  
                ),
                Container(
                  padding: const EdgeInsets.all(8),  
                    child: const Text('Thrid', style: TextStyle(fontSize: 20)),  
                    color: Colors.yellow,  
                ),

                Container(
                  padding: const EdgeInsets.all(8),  
                    child: const Text('Four', style: TextStyle(fontSize: 20)),  
                    color: Colors.blue,  
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