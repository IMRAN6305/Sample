import 'package:flutter/material.dart';

import '../custom_widget/text_filed.dart';

class ex2 extends StatefulWidget {
  const ex2({super.key});

  @override
  State<ex2> createState() => _ex2State();
}

class _ex2State extends State<ex2> {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .onSecondary,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .primary,
        centerTitle: true,
        title: Text('Scaffold'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              keyboardAppearance:Brightness.dark,
              // maxLines: 2,
              decoration: InputDecoration(
                  label:Text('Name'),
                  hintText: 'Enter your Name',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(51.0)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              keyboardAppearance:Brightness.light,
              // maxLines: 2,
              decoration: InputDecoration(
                  label:Text('Name'),
                  hintText: 'Enter your Name',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21.0)
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
