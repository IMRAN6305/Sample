import 'package:flutter/material.dart';

class ex1 extends StatefulWidget {
  const ex1({super.key});

  @override
  State<ex1> createState() => _ex1State();
}

class _ex1State extends State<ex1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _pwd = TextEditingController();
    bool isChecked = false;
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.confirmation_number_outlined,
                        color: Colors.grey),
                    SizedBox(
                      height: 50,
                    ),
                    Text.rich(
                      TextSpan(
                          text: 'We are',
                          style: TextStyle(
                              fontSize: 51,
                              color: Colors.grey.withOpacity(0.8)),
                          children: [
                            TextSpan(
                                text: " aroma",
                                style: TextStyle(
                                    fontSize: 51,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Welcome Back,please login \nto your account.',
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.grey.withOpacity(0.7),
                        letterSpacing: 0.9,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                          label: Text('Eamil Address'),
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    TextField(
                      controller: _pwd,
                      decoration: InputDecoration(
                          label: Text('Password'),
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text('Remeber me',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffb3b3b3),
                              fontWeight: FontWeight.bold,
                            )),
                        Expanded(
                          flex: 10,
                          child: Text(
                            'Forget password',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.black,
                                shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Login'),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black38,
                              backgroundColor: Colors.white,
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Signup'),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'By signint up ,you agree to Aroma\'s',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    Text('Terms and Conditions & Privacy Policy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
                child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bed-room.jpg'),
                    fit: BoxFit.fill),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
