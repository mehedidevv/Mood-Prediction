import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         //AppBar
         appBar: AppBar(
           backgroundColor: Colors.teal,
           title: Text("Mode Prediction"),
         ),

         body: myModePage(),
         backgroundColor: Colors.teal[300],

         ),
       );
  }
}

class myModePage extends StatefulWidget {
  const myModePage({super.key});

  @override
  State<myModePage> createState() => myModePageState();
}


class myModePageState extends State<myModePage> {

  String currentMood="happy";

  void changeMyMood(String mood) {
    setState(() {
      currentMood = mood;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset(
              'images/$currentMood.png',
              fit: BoxFit.fitHeight,
            ),
          ),

      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: Text('Happy'),
            onPressed: () {
              changeMyMood("happy");
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: Text('Sad'),
            onPressed: () {
              changeMyMood("cry");
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: Text('Angry'),
            onPressed: () {
              changeMyMood("angry");
            },
          ),
        ),
      ],
      ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text('Laugh'),
                  onPressed: () {
                    changeMyMood("loughing");
                  },
                ),
              ),
              //Get students to create the second die as a challenge
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text('Romantic'),
                  onPressed: () {
                    changeMyMood("love");
                  },
                ),
              ),
            ],
          ),
          
        ],
      );
  }
}

