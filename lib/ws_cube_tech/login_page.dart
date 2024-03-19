import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  List<String> listNames = ['IMRAN', 'Ravi', 'Naveen', 'Rajesh', 'Prakesh'];

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                color: Theme.of(context).primaryColor,
                width: MediaQuery.of(context).size.width,
                height: 96.0,
                child: const Center(
                  child: Text(
                    'I am container',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Theme.of(context).primaryColor,
                alignment: Alignment.center,
                transform: Matrix4.skewY(0.2),
                child: Text('Hai, I am Slanting',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white)),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.0 +
                          50.0,
                ),
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'IMRAN is a good boy',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
