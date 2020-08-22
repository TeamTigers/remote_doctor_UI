import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';
import 'package:remotedoctor/MainPages/home_page.dart';
import 'package:remotedoctor/StartSlide/start_scand_page.dart';
import 'package:remotedoctor/Constances/fronts_constaces.dart';
import 'package:remotedoctor/Constances/color_contances.dart';


class FristPage extends StatefulWidget {
  @override
  _FristPageState createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
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
            FadeAnimation(
              1.5,
              Container(
                height: 400.0,
                width: 400.0,
                child: Image.asset('assets/images/undraw_medical_care_movn.png',),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FadeAnimation(
              1.5,
              Text("Always laugh while you\ncan, it is a cheap medicine",style: kBannerSubTitleStyle ,)
            ),
            SizedBox(
              height: 175,
            ),
            FadeAnimation(
              1.8,
              Padding(
                padding: const EdgeInsets.only(left:25.0,right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FadeAnimation(1.5,
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            child: FlatButton(
                              child: Text(" Skip ",
                                style: TextStyle(fontFamily: 'Poppins',color: Colors.blueAccent[400],fontSize: 15,fontWeight: FontWeight.bold),),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              },
                            ),
                          ),
                        )),
                    ButtonTheme(
                      minWidth: 80.0,
                      height: 36.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecandPage()),
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              fontFamily: 'Poppins'
                          ),
                        ),
                        color: Color(0xFF2979FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
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
