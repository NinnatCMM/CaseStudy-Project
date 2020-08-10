import 'package:flutter/material.dart';
import './ChooseCategory.dart' as chooseCategory;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AddIncome extends StatelessWidget{
  final String title;

  AddIncome(this.title);

  String _date = 'เลือกวัน';
  //String _time = 'เลือกวัน';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('รายรับ'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(bottom: 10),
              color: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  /*new Card(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              Text('1 ม.ค. 2562',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ],
                          )
                        ],
                      )
                    ),
                  ), */

                  new Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      children: <Widget>[
                        // Text('1 ม.ค. 2562',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                                elevation: 4.0,
                                onPressed: (){
                                  DatePicker.showDatePicker(context,
                                    theme: DatePickerTheme(
                                      containerHeight: 210.0,
                                    ),
                                    showTitleActions: true,
                                    minTime: DateTime(2000,1,1),
                                    maxTime: DateTime(2025,12,31), onConfirm: (date){
                                      print('confirm $date');
                                      _date = '${date.year} - ${date.month} - ${date.day}';
                                      //setState(() {});
                                    },currentTime: DateTime.now(),locale: LocaleType.en
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.date_range,
                                                size: 18.0,
                                                color: Colors.teal,
                                              ),
                                              Text(
                                                " $_date",
                                                style: TextStyle(
                                                    color: Colors.teal,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.0),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "  Change",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),    
                      ],
                    ),
                  ),

                  new Card(
                    margin: EdgeInsets.only( left: 20, right:20),
                    child: new Container(
                      padding: EdgeInsets.all(20.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              //new Expanded(child: new Icon(Icons.account_balance_wallet)),
                              new Expanded(
                                child: new TextField(
                                  decoration: InputDecoration(
                                    hintText: '00.00 ฿',
                                    icon: Icon(Icons.account_balance_wallet, size: 50, color: Colors.teal,)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            new Container(
              padding: const EdgeInsets.only(bottom: 5,top:10),
              child: Column(
                children: <Widget>[
                  new ListTile(
                    leading: const Icon(Icons.category,size: 30,color: Colors.teal),
                    title: Text('Category',style: TextStyle(fontSize: 20),),
                    trailing: new Icon(Icons.navigate_next,size: 30, color: Colors.teal,),
                    onTap: (){
                      Navigator.push(
                        context,
                        SlideRightRoute(page: chooseCategory.ChooseCategory(''))
                      );
                    },
                  )
                ],
              ),
            ),

            Divider(
              indent: 15 ,endIndent: 15, thickness: 1,
            ),

            new Container(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  new TextField(
                    decoration: InputDecoration(
                      hintText: 'เพิ่มคำอธิบาย',
                      icon: Icon(Icons.create,size: 30,color: Colors.teal),
                    ),
                  )
                ],
              ),
            ),

            Divider(
              indent: 15 ,endIndent: 15, thickness: 1,
            ),

            new Container(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  new TextField(
                    decoration: InputDecoration(
                      hintText: 'สถานที่',
                      icon: Icon(Icons.place ,size: 30,color: Colors.teal),
                    ),
                  )
                ],
              ),
            ),

            Divider(
              indent: 15 ,endIndent: 15, thickness: 1,
            ),

            new Container(
              padding: const EdgeInsets.only(bottom: 5,),
              child: Column(
                children: <Widget>[
                  new ListTile(
                    leading: const Icon(Icons.add_a_photo,size: 30,color: Colors.teal),
                    title: Text('เพิ่มรูปภาพ',style: TextStyle(fontSize: 16),),
                    //trailing: new Icon(Icons.navigate_next,size: 30, color: Colors.teal,),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),

            new Container(
              alignment: Alignment.bottomCenter,             
              child: RaisedButton(
                onPressed: (){},
                child: const Text('บันทึก',style: TextStyle(fontSize: 20)),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 5,
              ),
            )
            
          ],
        ),
      ),
    );
  }
}


class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
        );
}