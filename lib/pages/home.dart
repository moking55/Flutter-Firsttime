import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(context: context,builder: (context) {
      return AlertDialog(
        title: Text('คำเตือน'),
        content: Text('หัวข้อนี้ยังไม่สมบูรณ์'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test Flutter App'),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.purple,
                  ])
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Image.asset('images/ltc.jpg',scale: 2.5,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text('LTC Student Mannual',style: TextStyle(fontSize: 20.0,color: Colors.white),),                      
                      ),
                    ],
                  ),
                ),
              ),
              CustomListTile(Icons.home,'หน้าแรก',()=>{createAlertDialog(context)}),
              CustomListTile(Icons.local_activity,'กิจกรรม',()=>{createAlertDialog(context)}),
              CustomListTile(Icons.people,'ผู้ช่วย',()=>{createAlertDialog(context)}),
              CustomListTile(Icons.info,'เกี่ยวกับแอพ',()=>{createAlertDialog(context)}),
            ],
          ),
        ),

        /* Body content must be here! */

        body: Container(
          child: 
            Flex(
              direction: Axis.vertical,
              children: <Widget>[
                MainTitleImage(),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('ยินดีต้อนรับ!', style: TextStyle(fontSize: 22.0),),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget{
  
  IconData icon;
  String text;
  Function ontap;

  CustomListTile(this.icon, this.text, this.ontap);

  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child:
        InkWell(
        onTap: ontap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: 
                      TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
              ]
            ),
          ],
        ),
      )
    );
  }
}

class MainTitleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(20.0),
      bottomLeft: Radius.circular(20.0)
    ),
    child: Image(
      image: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2020/05/08/Stay-at-home-concept-flat-illustration-Graphics-4064923-1.jpg')
      ),
    );
  }
}