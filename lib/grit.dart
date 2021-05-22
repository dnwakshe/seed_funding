import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
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
    );
  }
}