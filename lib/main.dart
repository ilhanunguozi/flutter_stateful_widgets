import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  List<int> numbers = [];

  void onClicked(){
    setState(() {
      //counter = counter + 1;
      numbers.add(numbers.length);
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Click counter', style: TextStyle(fontSize: 30),),
                // Text('$counter', style: TextStyle(fontSize: 30),),
                for(var n in numbers) Text('$n'),
                IconButton(
                      onPressed: onClicked
                    , icon: Icon(Icons.add_box_rounded,size: 30,)
                )
              ],
            ),
          ),
        ),
    );
  }
}
