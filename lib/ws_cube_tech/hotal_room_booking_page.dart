import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 330,
                child: Image.asset(
                  'assets/images/bed-room.jpg',
                  fit: BoxFit.fill,
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // it is staring name and logo
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // it is name of the hotal room
                        Text(
                          'Las Noches',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        // heart logo
                        Icon(Icons.heart_broken)
                      ],
                    ),
                  ),
                  // it is star and rating and peoples
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Text('4.9 '),
                        Text(
                          '(99)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  //it is info
                  Container(
                      child: Text(
                        'Las Noches is A Five Star Hotal With Tons Of Facailities.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontSize: 15),
                      )),
                  //heaing1
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Facilities',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  //heading1 info (wifi and data)
                  Container(
                    child: Row(
                      children: [
                        //wifi logo
                        Icon(
                          Icons.wifi,
                          color: Colors.blue,
                          size: 40,
                        ),
                        //side text
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Great internet Connection',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Enjoy your vaccaion without sacrificing fast and \n '
                                      'reallable internet connection.',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                padding: EdgeInsets.only(top: 5),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //heading2
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        //wifi logo
                        Icon(
                          Icons.air,
                          color: Colors.blue,
                          size: 40,
                        ),
                        //side text
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Air Conditioner',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Enjoy your stay with cool breeze from the air \n condtioner',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                padding: EdgeInsets.only(top: 5),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //heading3
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        //coffee logo
                        Icon(
                          Icons.coffee,
                          color: Colors.blue,
                          size: 40,
                        ),
                        //side text
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Cafetaria',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Our cafe provides good quality of food and \n beverages with reasonable prices',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                padding: EdgeInsets.only(top: 5),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                // shape: BoxShape.circle,
                // color: Colors.black
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'From \$ 199 / Night',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        //       boxShadow: [
                        //   BoxShadow(
                        //   color: Colors.grey.withOpacity(0.5),
                        //   spreadRadius: 5,
                        //   blurRadius: 7,
                        //   offset: Offset(0, 3), // changes position of shadow
                        // ),
                          border: Border.all(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                            'Choose a room',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}