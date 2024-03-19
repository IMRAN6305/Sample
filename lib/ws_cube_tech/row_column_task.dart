import 'package:flutter/material.dart';

class Row_Column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Row(
        children: [
          Container(
            height: double.infinity,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  // height: 20,

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Text(
                    'Strawberry pavlova',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Text(
                    'industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.symmetric(horizontal:10),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '170 Reviews',
                          style: TextStyle(fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.book),
                            Text('PREP'),
                            Text('25 min')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.access_time_filled_outlined),
                            Text('CLOCK'),
                            Text('1 hr')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.dinner_dining),
                            Text('Feeds'),
                            Text('4-5')
                          ],
                        ),
                      ],
                    )),
                Container(
                  height: 80,
                )
              ],
            ),
          ),
          Container(
            // height: double.infinity,
            width: 500,
            child: Image.asset(
              'assets/images/cake.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}