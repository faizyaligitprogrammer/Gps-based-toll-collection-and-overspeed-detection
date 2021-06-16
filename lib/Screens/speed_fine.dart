import 'package:flutter/material.dart';
import 'package:sukhad_yathra/Screens/toll.dart';

class SpeedFine extends StatefulWidget {
  const SpeedFine({Key key}) : super(key: key);

  @override
  _SpeedFineState createState() => _SpeedFineState();
}

class _SpeedFineState extends State<SpeedFine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: const Text("Overspeed Fine Details"),

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

              },
            ),

          ],
        ),
      ),
    );
  }
}
