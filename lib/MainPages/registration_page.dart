import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';
import 'package:remotedoctor/MainPages/home_page.dart';
import 'package:remotedoctor/MainPages/log_in.dart';
import 'package:remotedoctor/StartSlide/start_scand_page.dart';
import 'package:remotedoctor/Constances/fronts_constaces.dart';
import 'package:remotedoctor/Constances/color_contances.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
              FadeAnimation(
        1.5,
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Get Started with\n   Virtual Doctor',
                    style:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.blueAccent[400]),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: 15,
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 40.0, right: 40.0),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
              1.5,
                  TextFormField(
                    decoration:  InputDecoration(
                      labelText: "Enter Phone number",
                      fillColor: Colors.white,
                      border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(25.0),
                        borderSide:  BorderSide(
                        ),
                      ),
                      //fillColor: Colors.green
                    ),
                    keyboardType: TextInputType.phone,
                    style:  TextStyle(
                      fontFamily: "Poppins",
                    ),
                  )),
                  SizedBox(height: 40.0),
                  FadeAnimation(1.5,
                  TextFormField(
                    decoration:  InputDecoration(
                      labelText: "Enter Password",
                      fillColor: Colors.white,
                      border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(25.0),
                        borderSide:  BorderSide(
                        ),
                      ),
                      //fillColor: Colors.green
                    ),
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style:  TextStyle(
                      fontFamily: "Poppins",
                    ),
                  )),
                  SizedBox(height: 40.0),
                  FadeAnimation(1.5,
                  TextFormField(
                    decoration:  InputDecoration(
                      labelText: "Confirm Password",
                      fillColor: Colors.white,

                      border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(25.0),
                        borderSide:  BorderSide(
                        ),

                      ),
                      //fillColor: Colors.green
                    ),
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style:  TextStyle(
                      fontFamily: "Poppins",
                    ),
                  )),
                  SizedBox(height: 50.0),
                  FadeAnimation(1.5,
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(25.0),
                        shadowColor: Colors.lightBlueAccent,
                        color: Colors.blueAccent[400],
                        elevation: 6.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Create account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ))),
                  SizedBox(height: 20.0),
                  FadeAnimation(1.5,
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      child: FlatButton(
                        child: Text("  I already have account",
                          style: TextStyle(fontFamily: 'Poppins',color: Colors.blueAccent[400],fontSize: 15,fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                    ),
                  )),
                ],
              )),

        ])

    );
  }
}
