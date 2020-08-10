import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.only(bottom: 15, top: 15, left:30, right: 30),
            color: Colors.blueGrey[700],
            child: Column(
              children: <Widget>[
                Text('MONTH',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white)),
                Card(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('ยอดคงเหลือ',style: TextStyle(fontSize: 26, color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('฿0000',style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold ,color: Colors.white)),
                          ],
                        ), 
                      ],
                    ),
                  ),   
                color: Colors.deepOrange[600],   
                ),

                Card(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 2),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('รายรับ',style: TextStyle(fontSize: 20, color: Colors.blueGrey[800])),
                          ],
                        ),
                        Column(
                          children: [
                            Text('฿0000',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.blueGrey[800])),
                          ],
                        ), 
                      ],
                    ),  
                  ),   
                color: Colors.amber[400],   
                ),

                Card(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 2),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('รายจ่าย',style: TextStyle(fontSize: 20, color: Colors.blueGrey[800])),
                          ],
                        ),
                        Column(
                          children: [
                            Text('฿0000',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.blueGrey[800])),
                          ],
                        ), 
                      ],
                    ),
                  ),   
                color: Colors.amber[400],   
                )

              ],
            ),
          ),

          SizedBox(
                height: 40.0,
                child: Icon(
                  Icons.refresh,
                  size: 35.0,
                  color: Color(0xFF015FFF),
                ),
              ),

          Container(
            margin: EdgeInsets.only(top: 10),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('1 ม.ค. 2562',style: TextStyle(fontSize: 16),),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
                              child: Icon(Icons.fastfood,size: 40,color: Colors.red,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 100, top: 4, bottom: 4),
                              child: Text('รวมค่าอาหาร',style: TextStyle(fontSize: 20),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
                              child: Text('350 ฿',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Text('2 ม.ค. 2562',style: TextStyle(fontSize: 16),),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
                              child: Icon(Icons.fastfood,size: 40,color: Colors.red,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 100, top: 4, bottom: 4),
                              child: Text('รวมค่าอาหาร',style: TextStyle(fontSize: 20),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
                              child: Text('200 ฿',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),               
              ],
            ),
          ),

        ],
      ),
    );
  }
}