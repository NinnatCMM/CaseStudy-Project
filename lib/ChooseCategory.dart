import 'package:flutter/material.dart';

class ChooseCategory extends StatelessWidget{
  final String title;
  ChooseCategory(this.title);

  TextEditingController editingController = TextEditingController();
  final items = List<String>.generate(10000, (i) => "Category $i");
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('เลือกประเภท'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(bottom: 10, top: 10, left: 25, right: 25),
              color: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  new TextField(
                    onChanged: (value){

                    },
                    controller: editingController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon:  Icon(Icons.search,color: Colors.white,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),

            new Container(
              padding: const EdgeInsets.only(left: 10,right:10,top: 10),
              child: ListTile(
                leading: Icon(Icons.add_circle_outline,size: 30, color: Colors.blueGrey,),
                title: Text('Add new category',style: TextStyle(color: Colors.blueGrey),),
              ),
            ),
            
            new Divider(thickness: 1,),

            new Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: <Widget>[
                  new ListTile(
                    leading: Icon(Icons.category,color: Colors.teal,size: 30,),
                    title: Text('Category 1'),
                  ),
                  Divider(indent: 15, endIndent: 15, thickness: 1,),

                  new ListTile(
                    leading: Icon(Icons.category,color: Colors.teal,size: 30,),
                    title: Text('Category 2'),
                  ),
                  Divider(indent: 15, endIndent: 15, thickness: 1,),

                  new ListTile(
                    leading: Icon(Icons.category,color: Colors.teal,size: 30,),
                    title: Text('Category 3'),
                  ),
                  Divider(indent: 15, endIndent: 15, thickness: 1,),

                  new ListTile(
                    leading: Icon(Icons.category,color: Colors.teal,size: 30,),
                    title: Text('Category 4'),
                  ),
                  Divider(indent: 15, endIndent: 15, thickness: 1,),

                  new ListTile(
                    leading: Icon(Icons.category,color: Colors.teal, size: 30,),
                    title: Text('Category 5'),
                  ),
                  Divider(indent: 15, endIndent: 15, thickness: 1,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}