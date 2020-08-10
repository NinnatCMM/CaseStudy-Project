import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget{
  final String title;

  HistoryPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ประวัติการใช้'),
      ),
      body: new Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index){
            return Row(
              children: <Widget>[
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 3),
                          color: Color(0x20000000),
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: Icon(Icons.fiber_manual_record,
                    size: 20, color: Theme.of(context).accentColor),
                  ),
                ),
                Container(
                  width: 80, 
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('08.00'),
                  )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Container(
                      padding: const EdgeInsets.all(14.0),
                      decoration: BoxDecoration(color: Colors.white, 
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow:[ 
                        BoxShadow(
                          color: Color(0x20000000),
                          blurRadius: 5,
                          offset: Offset(0, 3))                    
                        ],
                      ),                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Pay for the Car"),
                          SizedBox(
                            height: 12,
                          ), Text("Personal")],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}