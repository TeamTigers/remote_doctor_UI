import 'package:flutter/material.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';

import 'cons_page.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(1.5,
      SingleChildScrollView(
        child: Container(
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
                      child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cons()),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:60.0,bottom: 0),
                      child: Text('Appointments',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
                    )
                  ],
                ),
                color: Colors.white,),
              ),
    SizedBox(height: 20,),

    DefaultTabController(length: 2,initialIndex: 0, child: Column(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.only(left:25.0,right: 25),
    child: TabBar(
    indicator: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.blueAccent[400],
    ),
    unselectedLabelColor: Colors.blueAccent,
    tabs: [
    Tab(text: 'Pending',),
    Tab(text: 'Closed',),
    ]),
    ),
        Container(
          height: 564.6,
          child:TabBarView(children: [
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: CircleAvatar(
                                  radius: 40,
                                  child: Image.asset('assets/images/sumaiya.png'),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Dr.Sumaiya\n\nMBBS,FRCS(US)\nSenior Gynocologist',
                                  style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Appointment time : 2 Aug,2020 5:30pm',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 15,color: Colors.amberAccent[400]),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ButtonTheme(
                              minWidth: 80.0,
                              height: 36.0,
                              child: RaisedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Cancel appointment',
                                  style: TextStyle(
                                      color: Colors.red[900],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                                color:Colors.red[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shadowColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: CircleAvatar(
                                  radius: 40,
                                  child: Image.asset('assets/images/shunjid.png'),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Dr.Shunjid\n\nMBBS,FRCS(US)\nSenior Pagla',
                                  style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Appointment time : 22 Aug,2020 5:30pm',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 15,color: Colors.amberAccent[400]),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ButtonTheme(
                              minWidth: 80.0,
                              height: 36.0,
                              child: RaisedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Cancel appointment',
                                  style: TextStyle(
                                      color: Colors.red[900],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                                color:Colors.red[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shadowColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: CircleAvatar(
                                  radius: 40,
                                  child: Image.asset('assets/images/zubayer.png'),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Dr.Zubayer\n\nMBBS,FRCS(US)\nSenior Senti',
                                  style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Appointment time : 2 Aug,2020 5:30pm',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 15,color: Colors.amberAccent[400]),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ButtonTheme(
                              minWidth: 80.0,
                              height: 36.0,
                              child: RaisedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Cancel appointment',
                                  style: TextStyle(
                                      color: Colors.red[900],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                                color:Colors.red[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shadowColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: CircleAvatar(
                                  radius: 40,
                                  child: Image.asset('assets/images/sumaiya.png'),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Dr.Sumaiya\n\nMBBS,FRCS(US)\nSenior Gynocologist',
                                  style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Appointment time : 2 Aug,2020 5:30pm',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 15,color: Colors.amberAccent[400]),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ButtonTheme(
                              minWidth: 80.0,
                              height: 36.0,
                              child: RaisedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Cancel appointment',
                                  style: TextStyle(
                                      color: Colors.red[900],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                                color:Colors.red[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shadowColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),

                ],
              ),
            ),
           ListView(
             scrollDirection: Axis.vertical,
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('12 Aug,2020',style: TextStyle(fontStyle: FontStyle.italic, ),),
                             Text('4:30 pm',style: TextStyle(fontStyle: FontStyle.italic, ),)
                           ],
                         ),
                       ),
                       Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(left:18.0),
                             child: CircleAvatar(
                               radius: 40,
                               child: Image.asset('assets/images/Jannatul.png'),
                             ),
                           ),
                           SizedBox(width: 20,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Dr.Jannatul\n\nMBBS,FRCS(US)\nHatori Dentist',
                               style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                           )
                         ],
                       ),
                     ],
                   ),

                   elevation: 10,
                   shadowColor: Colors.blueAccent,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('12 Aug,2020',style: TextStyle(fontStyle: FontStyle.italic, ),),
                             Text('4:30 pm',style: TextStyle(fontStyle: FontStyle.italic, ),)
                           ],
                         ),
                       ),
                       Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(left:18.0),
                             child: CircleAvatar(
                               radius: 40,
                               child: Image.asset('assets/images/shunjid.png'),
                             ),
                           ),
                           SizedBox(width: 20,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Dr.Shunjid\n\nMBBS,FRCS(US)\nSenior Gynocologist',
                               style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                           )
                         ],
                       ),
                     ],
                   ),

                   elevation: 10,
                   shadowColor: Colors.blueAccent,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('12 Aug,2020',style: TextStyle(fontStyle: FontStyle.italic, ),),
                             Text('4:30 pm',style: TextStyle(fontStyle: FontStyle.italic, ),)
                           ],
                         ),
                       ),
                       Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(left:18.0),
                             child: CircleAvatar(
                               radius: 40,
                               child: Image.asset('assets/images/fahad.png'),
                             ),
                           ),
                           SizedBox(width: 20,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Dr.Shah Fahad\n\nMBBS,FRCS(US)\nSenior Neurologist',
                               style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                           )
                         ],
                       ),
                     ],
                   ),

                   elevation: 10,
                   shadowColor: Colors.blueAccent,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('12 Aug,2020',style: TextStyle(fontStyle: FontStyle.italic, ),),
                             Text('4:30 pm',style: TextStyle(fontStyle: FontStyle.italic, ),)
                           ],
                         ),
                       ),
                       Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(left:18.0),
                             child: CircleAvatar(
                               radius: 40,
                               child: Image.asset('assets/images/fahad.png'),
                             ),
                           ),
                           SizedBox(width: 20,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('Dr.Someone\n\nMBBS,FRCS(US)\nSenior Gynocologist',
                               style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14) ,),
                           )
                         ],
                       ),
                     ],
                   ),

                   elevation: 10,
                   shadowColor: Colors.blueAccent,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                   ),
                 ),
               )
             ],
           )
        ]) ,)
    ],),
    )]),),
      ))
     );
  }
}

