import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:save_my_money/AddIncome.dart';
import './FirstPage.dart' as first; 
import './SecondPage.dart' as second; 
import './ThirdPage.dart' as third;
import './ForthPage.dart' as forth; 
import './ContactPage.dart' as contact;
import './ExportPage.dart' as exports;
import './HistoryPage.dart' as history;
import './ReportPage.dart' as report;
import './SettingsPage.dart' as settings;
import './AddIncome.dart' as income;
import './AddExpenses.dart' as expenses;

void main(){
  runApp(new MaterialApp(
    home: new MyTabs(),
    theme: ThemeData(fontFamily: 'Kanit'),
    )
  );
}

class MyTabs extends StatefulWidget{
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  MyTabs({this.onPressed, this.icon, this.tooltip});

  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  
  TabController controller; 

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }
  
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    return new Scaffold(
      appBar: new AppBar(  
        title: new Text("Save My Money", style: TextStyle(fontFamily: 'Kanit'),),
        backgroundColor: Colors.teal,
        /*bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.monetization_on),text: "รับ-จ่าย",),
            new Tab(icon: new Icon(Icons.list),text: "รายการ",),
            new Tab(icon: new Icon(Icons.schedule),text: "To Do List",),
            new Tab(icon: new Icon(Icons.show_chart),text: "สรุป",),
          ],
          
        ),*/
      ),

      bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.monetization_on),text: "รับ-จ่าย",),
            new Tab(icon: new Icon(Icons.list),text: "รายการ",),
            new Tab(icon: new Icon(Icons.schedule),text: "To Do List",),
            new Tab(icon: new Icon(Icons.show_chart),text: "สรุป",),
          ],
        ),
      ), 

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third(),
          new forth.Forth()
        ],  
      ),

      floatingActionButton: SpeedDial(
        backgroundColor: Colors.teal[300],
        closeManually: true,
        child: Icon(Icons.add_circle, size: 55,),
        children: [
          SpeedDialChild(
            child: Icon(Icons.attach_money),
            label: 'รายรับ',
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => income.AddIncome(''),)
              );
            }
          ),
          SpeedDialChild(
            child: Icon(Icons.payment),
            label: 'รายจ่าย',
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => expenses.AddExpenses('')),
              );
            }
          )
        ],
      ), 

      drawer: Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            /*DrawerHeader(
              child: Text('Save My Money',style: TextStyle(fontSize: 26, color: Colors.teal[50]),),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),  
            ), */

            new UserAccountsDrawerHeader(
              accountName: new Text('FirstName LastName'),
              accountEmail: new Text('SaveMyMoney@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white, 
                child: new Text('N'),
              ),
              
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.teal,),
              title: Text('ประวัติการใช้',style: TextStyle(fontSize: 16),),
              trailing: new Icon(Icons.navigate_next),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => history.HistoryPage('')),
                );
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.save_alt, color: Colors.teal,),
              title: Text('Export',style: TextStyle(fontSize: 16),),
              trailing: new Icon(Icons.navigate_next),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            
            Divider(
              indent: 15 ,endIndent: 15, thickness: 1,
            ),
            
            ListTile(
              leading: const Icon(Icons.report_problem, color: Colors.teal,),
              title: Text('รายงานปัญหา',style: TextStyle(fontSize: 16),),
              trailing: new Icon(Icons.navigate_next),
              onTap: (){
                Navigator.pop(context);
              },

            ),
            
            ListTile(
              leading: const Icon(Icons.contacts, color: Colors.teal,),
              title: Text('ติดต่อ',style: TextStyle(fontSize: 16),),
              trailing: new Icon(Icons.navigate_next),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            Divider(
              indent: 15 ,endIndent: 15, thickness: 1,
            ),
  
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.teal,),
              title: Text('ตั้งค่า',style: TextStyle(fontSize: 16),),
              trailing: new Icon(Icons.navigate_next),
              onTap: (){
                Navigator.pop(context);
              },
            ),
  
          ],
        ),
      ),
    );
  }
}