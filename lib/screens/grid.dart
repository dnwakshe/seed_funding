import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
   List<Map> liOfMap =<Map> [
    {"nameOfcard":"g1", "imgPath" : "images/opp-afda.png" },
    {"nameOfcard":"g2", "imgPath" : "images/opp-dsaf.png" }, 
    {"nameOfcard":"g3", "imgPath" : "images/opp-adf.png"},
    { "nameOfcard":"g4", "imgPath" : "images/startup-funding.png" },
    { "nameOfcard":"g4", "imgPath" : "images/startup-funding.png" },
    { "nameOfcard":"g4", "imgPath" : "images/startup-funding.png" },
  ];
   List <String> list1 = <String> [
     "dnyaneshwar","satyam","aarush","Abrar"
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid test"),
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


 
         
      body: Center(
        child: GridView.builder(
          itemCount: liOfMap.length,

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(         
          
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30
          ), 

          itemBuilder: (BuildContext context, int index) {
            return  Container(
              height: 150,
                padding: const EdgeInsets.all(8),  
                child:  Column(
                  children: [

                    Image.asset(liOfMap[index]["imgPath"]),
                    Text(liOfMap[index]["nameOfcard"].toString() ),
                  ],
                ),
                color: Colors.yellow,  
            );

            },
          
           ),
      ),
    );
  }
}
