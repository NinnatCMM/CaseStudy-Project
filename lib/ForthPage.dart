import 'package:flutter/material.dart';

class Forth extends StatelessWidget {
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
                Text('SUMMARY',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white)),
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
          )
        ],
      ),
    );
  }
}