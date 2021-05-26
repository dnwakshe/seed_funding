import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us"),),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  " Software Project Management",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold),
              ),
            ),
            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Aarush Babbar'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),

            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Abrar Aslam'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),
            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Vishwesh Zad'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),
            Card(  
              child: Column(  
                mainAxisSize: MainAxisSize.min,  
                children: <Widget>[  
                   ListTile(  
                    leading: Icon(Icons.person, size: 45),  
                    title: Text('Dnyaneshwar Wakshe'),  
                    subtitle: Text('Software Developer'),  
                  ), 
                 ],  
              ),  
            ),




           
          ],
        ),
      ),

    );
  }
}