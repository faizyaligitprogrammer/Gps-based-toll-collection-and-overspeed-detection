import 'package:firebase_auth/firebase_auth.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sukhad_yathra/Screens/user_home.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: LoginDemo(),
  //   );
  // }
}

class _LoginScreenState extends State<LoginScreen> {
  String loginId = "";
  String password = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 100.0,
                    child: Image.asset('images/logo1.png'),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                Center(child: Text('Sukhad Yathra',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900))),
                SizedBox(
                  height: 48.0,
                ),
                TextFormField(
                  validator: (String val) {
                    if (val.isNotEmpty) {
                      loginId = val;
                      return null;
                    } else {
                      return "please enter your Login id or Registered email id";
                    }
                  },
                  style: TextStyle(color: Colors.black54),
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Your Login id or Email id.',
                    hintStyle: TextStyle(
                        color: Colors.black38, fontStyle: FontStyle.italic),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  validator: (String val) {
                    if (val.isNotEmpty) {
                      password = val;
                      return null;
                    } else {
                      return "please enter your Password";
                    }
                  },
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    helperStyle: TextStyle(color: Colors.black),
                    hintText: 'Enter your password.',
                    hintStyle: TextStyle(
                        color: Colors.black38, fontStyle: FontStyle.italic),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: ()async {

                        if (_formkey.currentState.validate()) {
                          print(loginId);
                          print(password);
                          var client = http.Client();
                          try {
                            var url = Uri.parse('http://192.168.1.6:3000/users/login');
                            var response = await http.post(url, body: { 'emailId': loginId,'password':password });
                            print('Response status: ${response.statusCode}');
                            print('Response body: ${response.body}');
                            if (response.statusCode == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UserHome()),
                              );
                            }
                            else if(response.statusCode == 401){

                            }
                          } catch (e) {
                            debugPrint("something went wrong");
                            throw e.toString();
                          } finally {
                            client.close();
                          }
                          // var url = Uri.parse('http:192.168.225.77:3000/users/register');
                          // var response = await http.post(url, body: {'username':_uname, 'password':_pwd});
                          // print('Response status: ${response.statusCode}');
                          // print('Response body: ${response.body}');
                        }


                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Center(
                        child: Text(
                          'Log In',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
