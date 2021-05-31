import 'package:flutter/material.dart';
class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // In this I want to build list view by calling 
      body: new ListViewBuilder(),
      
        
    );
  }
}
class ListViewBuilder extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products =  [
    {"id": "01" ,"name":"dnyaneshwar wakshe ", "class":"SYMCA", "college":"VIT , Pune"},
    {"id": "02" ,"name":"Aarush Babbar", "class":"SYMCA", "college":"VIT , Pune"},
    {"id": "03" ,"name":"Abrar Alsam", "class":"SYMCA", "college":"VIT , Pune"},
    {"id": "04" ,"name":"Satyam Chaurasiya", "class":"SYMCA", "college":"VIT , Pune"},

  ]; 
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      //====================== List View is here ===========================
        body: Container(
          child: ListView.separated(        // To add separation line between the ListView 
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey
                ),
                
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: Icon(Icons.person),
                    trailing: Text(products[index]["id"]),
                    title: Text(products[index]["name"]),
                  );
                },
            ),
         ),
    );
       
      

    
  }
}