import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';

import 'cons_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(1.5,
      Container(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Container(height: 100,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cons()),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0,bottom: 0),
                      child: Text('Personal Informations',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
                    )
                  ],
                ),
                color: Colors.white,),
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset('assets/images/joker1.png'),
                  radius: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text('Why So Serious!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.orangeAccent),),
                ),
                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Age:   30',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('SEX:   Male',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOB:   10th June,1985',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),

              ],
            )
          ],
        ),
      )),
    );
  }
}
