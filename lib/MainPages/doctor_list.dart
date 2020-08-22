import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';
import 'package:remotedoctor/MainPages/cons_page.dart';

class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(
        1.5,
        Container(
          color: Colors.white,
          child: Column(
              children: <Widget>[
          Padding(
          padding: const EdgeInsets.only(top:28.0),
          child: Container(height: 100,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){}),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0,bottom: 0),
                  child: Text('Doctor List',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
                )
              ],
            ),
            color: Colors.white,),
        ),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/images/sumaiya.png'),
                                    radius:40 ,
                                  ),
                                ),
                                Text("Dr. Sumaiya islam\n\nHeart Specialist,DMC\nMBBS(DMC),FRCS(UK)",style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(right:18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent[400],
                                    child: IconButton(icon:Icon(Icons.more_horiz), onPressed: (){}),
                                  ),
                                )

                              ],
                            ),
                            color: Colors.white,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/images/sumaiya.png'),
                                    radius:40 ,
                                  ),
                                ),
                                Text("Dr. Sumaiya islam\n\nHeart Specialist,DMC\nMBBS(DMC),FRCS(UK)",style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(right:18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent[400],
                                    child: IconButton(icon:Icon(Icons.more_horiz), onPressed: (){}),
                                  ),
                                )

                              ],
                            ),
                            color: Colors.white,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18,top: 18,bottom: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/images/sumaiya.png'),
                                    radius:40 ,
                                  ),
                                ),
                                Text("Dr. Sumaiya islam\n\nCordiologist,DMC\nMBBS(DMC),FRCS(UK)",style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(right:18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent[400],
                                    child: IconButton(icon:Icon(Icons.more_horiz), onPressed: (){}),
                                  ),
                                )
                              ],
                            ),
                            color: Colors.white,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/images/sumaiya.png'),
                                    radius:40 ,
                                  ),
                                ),
                                Text("Dr. Sumaiya islam\n\nHeart Specialist,DMC\nMBBS(DMC),FRCS(UK)",style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(right:18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent[400],
                                    child: IconButton(icon:Icon(Icons.more_horiz), onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Cons()),
                                      );
                                    },),
                                  ),
                                )

                              ],
                            ),
                            color: Colors.white,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/images/sumaiya.png'),
                                    radius:40 ,
                                  ),
                                ),
                                Text("Dr. Sumaiya islam\n\nHeart Specialist,DMC\nMBBS(DMC),FRCS(UK)",style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(right:18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent[400],
                                    child: IconButton(icon:Icon(Icons.more_horiz), onPressed: (){}),
                                  ),
                                )

                              ],
                            ),
                            color: Colors.white,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 18,top: 18,bottom: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/images/sumaiya.png'),
                                    radius:40 ,
                                  ),
                                ),
                                Text("Dr. Sumaiya islam\n\nCordiologist,DMC\nMBBS(DMC),FRCS(UK)",style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(right:18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent[400],
                                    child: IconButton(icon:Icon(Icons.more_horiz), onPressed: (){}),
                                  ),
                                )
                              ],
                            ),
                            color: Colors.white,
                            height: 100,
                          ),
                        ),


                      ],
                    )
                ),

        ]
        )
      ))
    );
  }
}
