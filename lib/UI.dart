// ignore_for_file: prefer_const_constructors

import 'package:challenge/Profile.dart';
import 'package:flutter/material.dart';

class MedicalApp extends StatefulWidget {
  @override
  _MedicalAppState createState() => _MedicalAppState();
}

class _MedicalAppState extends State<MedicalApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Elsie Adkins",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.handyman,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 75, vertical: 5),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c')),
                ),
              ],
            ),
            Container(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.purple,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Icon(
                              Icons.add,
                              size: 50,
                            ),
                          ),
                          ListTile(
                            title: Text("Clinic Visit"),
                            subtitle: Text("Make an appointment"),
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Icon(
                              Icons.remove,
                              size: 50,
                            ),
                          ),
                          ListTile(
                            title: Text("Clinic Visit"),
                            subtitle: Text("Make an appointment"),
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
              width: 410,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What are your symptoms?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "😁 Temperature",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "😳 Boom",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              SizedBox(width: 20),
                              Text("🤏 Hump",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              SizedBox(width: 20),
                              Text(" 👁 Eye",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              SizedBox(width: 20),
                              Text("👅 Toungue",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              SizedBox(width: 20),
                              Text("😖 Stomach ache",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              SizedBox(width: 20),
                              Text("🩸 Blood",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                            ],
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      child: ListTile(
                    title: Text(
                      "Popular Doctors",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Container(
                    height: 300,
                    color: Color(0xffFAFAFA),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (Builder) => Profile()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 6,
                                        offset: const Offset(1, 1),
                                      )
                                    ]),
                                margin: EdgeInsets.all(5),
                                height: 200,
                                width: 190,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                                      radius: 30,
                                    ),
                                    ListTile(
                                      title: Center(
                                        child: Text(
                                          "Dr. Maya",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      subtitle: Center(
                                        child: Text(
                                          "Gynocologist",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Chip(
                                      label: Text("⭐ 5.0"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 6,
                                      offset: const Offset(1, 1),
                                    )
                                  ]),
                              margin: EdgeInsets.all(5),
                              height: 200,
                              width: 190,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://image.freepik.com/free-vector/user-icon_126283-435.jpg'),
                                    radius: 30,
                                  ),
                                  ListTile(
                                    title: Center(
                                      child: Text(
                                        "Dr. Chris Frazier",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    subtitle: Center(
                                      child: Text(
                                        "Pediatrician",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    label: Text("⭐ 4.0"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
