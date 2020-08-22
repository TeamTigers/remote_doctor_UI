import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';
import 'package:remotedoctor/MainPages/home_page.dart';
import 'package:remotedoctor/MainPages/log_in.dart';
import 'package:remotedoctor/StartSlide/start_third_page.dart';
import 'package:remotedoctor/Constances/fronts_constaces.dart';
import 'package:remotedoctor/MainPages/registration_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 55, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            FadeAnimation(
              1.5,
              Text("Select your account!",style: kButtonStyle,)
            ),
            SizedBox(
              height: 150,
            ),
            FadeAnimation(
              1.8,
              Padding(
                padding: const EdgeInsets.only(left:25.0,right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ButtonTheme(
                      buttonColor: Colors.white,
                      minWidth: 150.0,
                      height: 140.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child:Container(
                          color: Colors.white,
                          height:120 ,
                          width: 100,
                          child:Column(
                            children: <Widget>[
                              Image.asset('assets/images/patient.png',),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Patient",style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    ButtonTheme(
                      buttonColor: Colors.white,
                      minWidth: 150.0,
                      height: 140.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child:Container(
                          color: Colors.white,
                          height:120 ,
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/images/doctor.png',),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Doctor",style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
