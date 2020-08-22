import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:remotedoctor/Animation/FadeAnimation.dart';
import 'package:remotedoctor/MainPages/appointment_page.dart';
import 'package:remotedoctor/MainPages/doctor_list.dart';
import 'package:remotedoctor/MainPages/menu_page.dart';
import 'package:remotedoctor/MainPages/profile_page.dart';

class Cons extends StatefulWidget {
  @override
  _ConsState createState() => _ConsState();
}

class _ConsState extends State<Cons> {
  int _selectedIndex = 0;
  static  List<Widget>_children= <Widget>[
    Home(),
    Appointment(),
    Profile(),
    Menu()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        unselectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home',style: TextStyle(fontFamily: 'Poppins'),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text('Appointment',style: TextStyle(fontFamily: 'Poppins'),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Profile',style: TextStyle(fontFamily: 'Poppins',),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text('',style: TextStyle(fontFamily: 'Poppins',),),
        ),
      ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent[400],
        onTap: _onItemTapped,

      ),


      body:_children[_selectedIndex],
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      FadeAnimation(1.5,
        Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Container(
                    child: Row(
                      children: <Widget>[
                        Text('Find your consultant',style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.blueAccent[400]
                        ),),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.search,size: 30,color: Colors.blueAccent[400],)
                      ],
                    )
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text('Category',style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.black
                ),),
              ),
              SizedBox(height: 5,),
              DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueAccent[400],
                          ),
                          unselectedLabelColor: Colors.blueAccent,
                          tabs: [
                            Tab(text: 'Adult',),
                            Tab(text: 'Children',),
                            Tab(text: 'Women',),
                            Tab(text: 'Men',)
                          ]),
                      Container(
                        height: 140,
                        color: Colors.white,
                        child:TabBarView(
                          children: <Widget>[
                            Container(
                                child:ListView(
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.lightBlueAccent,
                                                color: Colors.blueAccent,
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => DoctorList()),
                                                      );
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Fever &\nCough ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:10.0),
                                                          child: Text(
                                                            '10 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.lightBlueAccent,
                                                color: Colors.blueAccent,
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child:Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Neurologist ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '3 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.lightBlueAccent,
                                                color: Colors.blueAccent,
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Dentist ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '10 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.lightBlueAccent,
                                                color: Colors.blueAccent,
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Cardiologist ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '5 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                  ],
                                )
                            ),
                            //Children View
                            Container(
                                child:ListView(
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.amberAccent,
                                                color: Colors.amber[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Fever &\nCough ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:10.0),
                                                          child: Text(
                                                            '10 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.amberAccent,
                                                color: Colors.amber[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child:Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            '   Heart\nProblem ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:12.0),
                                                          child: Text(
                                                            '13 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.amberAccent,
                                                color: Colors.amber[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Khatna ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '10 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.amberAccent,
                                                color: Colors.amber[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Autism ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '5 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                  ],
                                )
                            ),
                            // women view
                            Container(
                                child:ListView(
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.pinkAccent,
                                                color: Colors.pink[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(7.0),
                                                          child: Text(
                                                            'Gynecologist',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '10 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.pinkAccent,
                                                color: Colors.pink[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child:Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Neurologist ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '3 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.pinkAccent,
                                                color: Colors.pink[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Dentist ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '10 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                    FadeAnimation(1.5,
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 110.0,
                                              child: Material(
                                                borderRadius: BorderRadius.circular(20.0),
                                                shadowColor: Colors.pinkAccent,
                                                color: Colors.pink[300],
                                                elevation: 40.0,
                                                child: GestureDetector(
                                                    onTap: () {
                                                    },
                                                    child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Cardiologist ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(top:28.0),
                                                          child: Text(
                                                            '5 Doctors',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'Poppins'),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              )),
                                        )),
                                  ],
                                )
                            ),
                            Container(
                              child:ListView(
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  FadeAnimation(1.5,
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: 110.0,
                                            child: Material(
                                              borderRadius: BorderRadius.circular(20.0),
                                              shadowColor: Colors.lightBlueAccent,
                                              color: Colors.blueAccent,
                                              elevation: 40.0,
                                              child: GestureDetector(
                                                  onTap: () {
                                                  },
                                                  child: Column(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          'Fever &\nCough ',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(top:10.0),
                                                        child: Text(
                                                          '10 Doctors',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            )),
                                      )),
                                  FadeAnimation(1.5,
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: 110.0,
                                            child: Material(
                                              borderRadius: BorderRadius.circular(20.0),
                                              shadowColor: Colors.lightBlueAccent,
                                              color: Colors.blueAccent,
                                              elevation: 40.0,
                                              child: GestureDetector(
                                                  onTap: () {
                                                  },
                                                  child:Column(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          'Neurologist ',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(top:28.0),
                                                        child: Text(
                                                          '3 Doctors',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            )),
                                      )),
                                  FadeAnimation(1.5,
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: 110.0,
                                            child: Material(
                                              borderRadius: BorderRadius.circular(20.0),
                                              shadowColor: Colors.lightBlueAccent,
                                              color: Colors.blueAccent,
                                              elevation: 40.0,
                                              child: GestureDetector(
                                                  onTap: () {
                                                  },
                                                  child: Column(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          'Dentist ',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(top:28.0),
                                                        child: Text(
                                                          '10 Doctors',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            )),
                                      )),
                                  FadeAnimation(1.5,
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: 110.0,
                                            child: Material(
                                              borderRadius: BorderRadius.circular(20.0),
                                              shadowColor: Colors.lightBlueAccent,
                                              color: Colors.blueAccent,
                                              elevation: 40.0,
                                              child: GestureDetector(
                                                  onTap: () {
                                                  },
                                                  child: Column(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          'Cardiologist ',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(top:28.0),
                                                        child: Text(
                                                          '5 Doctors',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            )),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ) ,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text('Your Doctors',style: TextStyle(
                    fontFamily: 'Poppons',
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),),
              ),
              SizedBox(height: 20,),
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

                    ],
                  )
              ),

            ],
          ),
        ),


      ),
    );
  }
}



