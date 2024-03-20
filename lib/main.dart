import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/sample/ex1.dart';
import 'package:sample/sample/ex2.dart';
import 'package:sample/ws_cube_tech/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
            fontFamily: 'inter'),
        home: Flutter_challenges());
  }
}

class Flutter_challenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset('assets/images/model_girl_images/plants.jpg'),
      Image.asset('assets/images/model_girl_images/travel.jpg'),
      Image.asset('assets/images/model_girl_images/location.jpg'),
      Image.asset('assets/images/model_girl_images/use_mobile.jpg'),
      Image.asset('assets/images/model_girl_images/model_woman.jpg'),
      Image.asset('assets/images/model_girl_images/cooking.jpg'),
    ];

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        body: Stack(
          children: [
            // Image widget positioned at the bottom of the stack
            Positioned.fill(
              child: Image.asset(
                'assets/images/model_woman.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(51.0)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(41.0),
                        child: Column(
                          children: [
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Text(
                              'Aanika Johnson',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Freelancer',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Projects',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color:
                                                  Colors.grey.withOpacity(0.9),
                                              fontWeight: FontWeight.w200),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1135',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 41,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Hourly Rate',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color:
                                                  Colors.grey.withOpacity(0.9),
                                              fontWeight: FontWeight.w200),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '\$65',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 41,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Location',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color:
                                                  Colors.grey.withOpacity(0.9),
                                              fontWeight: FontWeight.w200),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Dussldorf',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 31,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.red,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 31.0),
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                    child: const Text('VIEW PROFILE')),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.blue,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 51.0),
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                    onPressed: () {},
                                    child: const Text('Message'))
                              ],
                            )
                          ],
                        ),
                      ),
                      GridView.builder(
                        itemCount: images.length,
                        shrinkWrap: true,

                        physics: NeverScrollableScrollPhysics(),
                        // Added
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 2.0,
                            childAspectRatio: 2 / 1.5),
                        itemBuilder: (context, index) {
                          return images[index];
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
