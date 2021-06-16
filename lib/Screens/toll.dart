import 'package:flutter/material.dart';
import 'package:sukhad_yathra/Screens/speed_fine.dart';


class Toll extends StatefulWidget {
  const Toll({Key key}) : super(key: key);

  @override
  _TollState createState() => _TollState();
}

class _TollState extends State<Toll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: const Text("Toll Details"),

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Container(
                height: 10.0,
                child: Image.asset('images/logo1.png'),
              ),

              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              duration: Duration(milliseconds: 250),
              curve: Curves.fastOutSlowIn,
            ),
            ListTile(
              title: Text('Toll Details'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Toll()),
                );
              },
            ),
            ListTile(
              title: Text('OverSpeed Fine Details'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SpeedFine()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
