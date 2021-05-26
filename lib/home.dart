import 'dart:convert';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seed_funding/Login.dart';
import 'package:seed_funding/about.dart';
import 'package:seed_funding/invest.dart';
import 'package:seed_funding/setting.dart';
import 'package:seed_funding/user_profile.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String user_first_name = 'Dnyaneshwar';
    String user_last_name = 'Wakshe';
    String e_mail = 'wakshe2@gmail.com';    
    TextEditingController caption_post = new TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Seed Funding'),
        centerTitle: true,
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
      ),
      //============================> Drawee Start<=================================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            GestureDetector(
              child: UserAccountsDrawerHeader(
                accountName: Text(user_first_name + ' ' + user_last_name),
                accountEmail: Text(e_mail),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    'D',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileUI2()),); 
              },
            ),
            //============================> Inner List Start<=================================
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Index()),);
              },
            ),
            
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('About Us'),
              onTap: () {
                 Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()),);
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
               Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                 Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),);
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //============== Status Container ==========
                    Container(
                      height: 200,
                      width: 500,
                      padding: EdgeInsets.only(
                        top: 14,
                        right: 12,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 5,
                            ),
                         ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 30.0),
                                 child: CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    child: Text("D"),
                                    radius: 30,
                                  ),
                               ),
                              SizedBox(
                                width: 250.0,
                                child: TextField(
                                      decoration: InputDecoration(                                        
                                        labelText: "Post a status",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          
                                        ),
                                        hintText: 'Hello! $user_first_name',                                      
                                      ), 
                                      // autofocus: false,
                                      maxLines: null,
                                      controller: caption_post,                                      
                                      keyboardType: TextInputType.text,
                                    ), 
                              ),
                              

                            ],
                          ),
                        
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all( 30.0),
                            child: Row(
                              children: [
                                Container(
                                child:  Row(
                                    children: [
                                      
                                      Icon(Icons.collections_outlined,color: Colors.blue, size: 30,),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100.0),
                                        child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text('Post'),
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(12), // <-- Radius
                                                  ),
                                                ),
                                              ),
                                      )

                                    ],
                                ),
                              ), 

                              ]
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //============== Post Container1 ============
                    Container(
                      height: 730,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10,
                            ),
                          ]),
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
                                  radius: 25,
                                ),
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            //========= Owner name ======
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  right: 8.0,
                                                  left: 8.0),
                                              child: Text(
                                                "Dnyaneshwar Wakshe ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            // ======== subtitle ======
                                            Text(
                                              "Software Developer",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 70.0),
                                          child: IconButton(
                                            alignment: Alignment.centerRight,
                                            onPressed: () {},
                                            icon: Icon(Icons.more_vert),
                                          ),
                                        ),
                                      ],
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
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "This my first post in seed funding portal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // for single post sigle image asset view and for multiple photos carousel should  used

                          Image(
                            image: AssetImage('images/flutter.jpg'),
                          ),

                          // post details
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "This is post detaiils ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Invest button
                          FlatButton(
                            color: Colors.greenAccent,
                            shape: StadiumBorder(),
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Invest()),); 
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30.0, left: 30.0),
                              child: Text("Star Investing "),
                            ),
                          ),

                          // ================= like comment and share ===============
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined),
                                    Text("100"),
                                    Icon(Icons.comment_outlined),
                                    Text("100"),
                                    Icon(Icons.share_sharp),
                                    Text("10000"),
                                  ],
                                ),
                            ) 
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    //============== Post Container1 ============
                    Container(
                      height: 730,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10,
                            ),
                          ]),
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
                                  radius: 25,
                                ),
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            //========= Owner name ======
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  right: 8.0,
                                                  left: 8.0),
                                              child: Text(
                                                "Dnyaneshwar Wakshe ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            // ======== subtitle ======
                                            Text(
                                              "Software Developer",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 70.0),
                                          child: IconButton(
                                            alignment: Alignment.centerRight,
                                            onPressed: () {},
                                            icon: Icon(Icons.more_vert),
                                          ),
                                        ),
                                      ],
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
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "This my first post in seed funding portal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // for single post sigle image asset view and for multiple photos carousel should  used

                          Image(
                            image: AssetImage('images/startup-funding.jpg'),
                          ),

                          // post details
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "This is post detaiils ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Invest button
                          FlatButton(
                            color: Colors.greenAccent,
                            shape: StadiumBorder(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Invest()),); 
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30.0, left: 30.0),
                              child: Text("Star Investing "),
                            ),
                          ),

                          // ================= like comment and share ===============
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined),
                                    Text("100"),
                                    Icon(Icons.comment_outlined),
                                    Text("100"),
                                    Icon(Icons.share_sharp),
                                    Text("10000"),
                                  ],
                                ),
                            ) 
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),



                    //============== Post Container1 ============
                    Container(
                      height: 730,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10,
                            ),
                          ]),
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
                                  radius: 25,
                                ),
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            //========= Owner name ======
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  right: 8.0,
                                                  left: 8.0),
                                              child: Text(
                                                "Dnyaneshwar Wakshe ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            // ======== subtitle ======
                                            Text(
                                              "Software Developer",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 70.0),
                                          child: IconButton(
                                            alignment: Alignment.centerRight,
                                            onPressed: () {},
                                            icon: Icon(Icons.more_vert),
                                          ),
                                        ),
                                      ],
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
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "This my first post in seed funding portal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // for single post sigle image asset view and for multiple photos carousel should  used

                          Image(
                            image: AssetImage('images/opp.png'),
                          ),

                          // post details
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "This is post detaiils ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Invest button
                          FlatButton(
                            color: Colors.greenAccent,
                            shape: StadiumBorder(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Invest()),); 
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30.0, left: 30.0),
                              child: Text("Star Investing "),
                            ),
                          ),

                          // ================= like comment and share ===============
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined),
                                    Text("100"),
                                    Icon(Icons.comment_outlined),
                                    Text("100"),
                                    Icon(Icons.share_sharp),
                                    Text("10000"),
                                  ],
                                ),
                            ) 
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //============== Post Container1 ============
                    Container(
                      height: 730,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10,
                            ),
                          ]),
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
                                  radius: 25,
                                ),
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            //========= Owner name ======
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  right: 8.0,
                                                  left: 8.0),
                                              child: Text(
                                                "Dnyaneshwar Wakshe ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            // ======== subtitle ======
                                            Text(
                                              "Software Developer",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 70.0),
                                          child: IconButton(
                                            alignment: Alignment.centerRight,
                                            onPressed: () {},
                                            icon: Icon(Icons.more_vert),
                                          ),
                                        ),
                                      ],
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
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "This my first post in seed funding portal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // for single post sigle image asset view and for multiple photos carousel should  used

                          Image(
                            image: AssetImage('images/images_artiklar_Tillvaxt_liten.jpg'),
                          ),

                          // post details
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "This is post detaiils ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Invest button
                          FlatButton(
                            color: Colors.greenAccent,
                            shape: StadiumBorder(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Invest()),); 
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30.0, left: 30.0),
                              child: Text("Star Investing "),
                            ),
                          ),

                          // ================= like comment and share ===============
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined),
                                    Text("100"),
                                    Icon(Icons.comment_outlined),
                                    Text("100"),
                                    Icon(Icons.share_sharp),
                                    Text("10000"),
                                  ],
                                ),
                            ) 
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


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
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Hello world"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
