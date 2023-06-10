import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Image(
            image: AssetImage('images/CSS DUET ACM LOGO.png'),
          ),
          title: const Center(
            child: Text("Sheharyar"),
          ),
          backgroundColor: Colors.indigo[500],
        ),
        body: Builder(builder: (BuildContext context) {
          double mywidth, myheight;
          if (MediaQuery.of(context).orientation == Orientation.landscape) {
            mywidth = (MediaQuery.of(context).size.height) * 0.95;
            myheight = (MediaQuery.of(context).size.width) * 0.30;
          } else {
            mywidth = (MediaQuery.of(context).size.width) * 0.95;
            myheight = (MediaQuery.of(context).size.height) * 0.30;
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Hey dis is a learning test app :) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: myheight,
                    width: mywidth,
                    // color: Colors.white,
                    child: const Image(
                      image: AssetImage('images/CSS DUET ACM LOGO.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
        backgroundColor: Colors.indigoAccent[100],
      ),
    );
  }
}
