import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';
import 'package:remotedoctor/MainPages/registration_page.dart';
import 'package:remotedoctor/MainPages/cons_page.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          FadeAnimation(
              1.5,
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text(
                        'Welcome to Virtual\n                Doctor',
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
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      FadeAnimation(1.5,
                          Container(
                            height: 40.0,
                            color: Colors.transparent,
                            child: Container(
                              child: FlatButton(
                                child: Text("  I don't have account",
                                  style: TextStyle(fontFamily: 'Poppins',color: Colors.blueAccent[400],fontSize: 15,fontWeight: FontWeight.bold),),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Registration()),
                                  );
                                },
                              ),
                            ),
                          )),
                      FadeAnimation(1.5,
                          Container(
                              height: 40.0,
                              width: 100.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                shadowColor: Colors.lightBlueAccent,
                                color: Colors.blueAccent[400],
                                elevation: 6.0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Cons()),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'Sing in',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                              ))),
                      SizedBox(height: 20.0),
                    ],
                  )
                ],

              )),
          SizedBox(height: 50,),
          FadeAnimation(1.5,
            Text("-------------------------     or     --------------------------",style: TextStyle(
              color: Colors.grey,fontSize: 15
            ),)
          ),
          SizedBox(height: 30,),
          FadeAnimation(
            1.5,
            Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 600.0,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            child: Image.asset('assets/images/facebook_logo.png'),
                          ), 
                          Text("Sing in with facebook",style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent[400]
                          ),)
                        ],

                      ),
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ButtonTheme(
                    minWidth: 600.0,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            child: Image.asset('assets/images/Google.png'),
                          ),
                          Text("Sing in with Google",style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent[400]
                          ),)
                        ],

                      ),
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ])
    );
  }
}
