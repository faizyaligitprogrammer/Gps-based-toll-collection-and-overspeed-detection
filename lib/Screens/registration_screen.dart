
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sukhad_yathra/Screens/login_screen.dart';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String name = "";
  String regNo="";
  String chassisNo="";
  String emailId = "";
  String password="";
  String phoneNo=" ";

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
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
                    child: Center(
                        child: Text(
                      'Sukhad Yathra',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                    height: 48.0,
                  ),
                  SizedBox(
                    child: Center(
                        child: Text(
                      'Register Here..',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                    height: 48.0,
                  ),
                  TextFormField(
                    validator: (String val) {
                      if (val.isNotEmpty) {
                        name = val;
                        return null;
                      } else {
                        return "please enter your username";
                      }
                    },
                    style: TextStyle(color: Colors.black),
                    onChanged: (value){

                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Name Of Vehicle Owner',
                      hintStyle: TextStyle(
                          color: Colors.black54, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black54, width: 2.0),
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
                        regNo = val;
                        return null;
                      } else {
                        return "please enter vehicle Registration number";
                      }
                    },
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Vehicle Registration Number.',
                      hintStyle: TextStyle(
                          color: Colors.black38, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black54, width: 2.0),
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
                        chassisNo = val;
                        return null;
                      } else {
                        return "please enter vehicle chassis number";
                      }
                    },
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Vehicle Chassis Number',
                      hintStyle: TextStyle(
                          color: Colors.black38, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black54, width: 2.0),
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
                        emailId = val;
                        return null;
                      } else {
                        return "please enter your email id.";
                      }
                    },
                    style: TextStyle(color: Colors.black54),
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Email Id',
                      hintStyle: TextStyle(
                          color: Colors.black38, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black54, width: 2.0),
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
                        return "please enter your password.";
                      }
                    },
                    style: TextStyle(color: Colors.black54),
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter a Password',
                      hintStyle: TextStyle(
                          color: Colors.black38, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black54, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    validator: (String val) {
                      if(val.isNotEmpty){
                        if(password==val){
                          return null;
                        }else{
                            return"password do not match";
                        }
                      }else{
                        return "please confirm your password";
                      }
                    },
                    style: TextStyle(color: Colors.black54),
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'confirm your password',
                      hintStyle: TextStyle(
                          color: Colors.black38, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black54, width: 2.0),
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
                        phoneNo = val;
                        return null;
                      } else {
                        return "please enter your phone number";
                      }
                    },
                    style: TextStyle(color: Colors.black54),
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Phone Number',
                      hintStyle: TextStyle(
                          color: Colors.black38, fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black54, width: 2.0),
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


                        onPressed: () async {

                          if (_formkey.currentState.validate()) {
                            print(name);
                            print(regNo);
                            print(chassisNo);
                            print(emailId);
                            print(password);
                            print(phoneNo);
                            var client = http.Client();
                            try {
                              var url = Uri.parse('http://192.168.1.6:3000/users/register_user');
                              var response = await http.post(url, body: {'name': name, 'regNo': regNo,'chassisNo':chassisNo,'emailId':emailId,'password':password,'phoneNumber':phoneNo});
                              print('Response status: ${response.statusCode}');
                              print('Response body: ${response.body}');
                              if (response.statusCode == 200) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()),
                                );
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
                            'Register Now',
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
      ),
    );
  }
}
