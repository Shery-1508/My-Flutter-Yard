import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Dixee());
}

class Dixee extends StatefulWidget {
  const Dixee({super.key});

  @override
  State<Dixee> createState() => _DixeeState();
}

class _DixeeState extends State<Dixee> {
  int l_dice = 1, r_dice = 3;
  int l_score = 0, r_score = 0;
  int l_tries = 0, r_tries = 0;
  //genrating random object from Random() class to create random values
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[300],
          title: Text("Dixee"),
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              l_dice = random.nextInt(6) + 1;
                              r_dice = random.nextInt(6) + 1;
                              l_tries++;
                              l_score = l_score + l_dice + r_dice;
                              // print("Left button pressed");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Image(
                                image: AssetImage("images/dice$l_dice.png"),
                                color: Colors.lightGreen,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              l_dice = random.nextInt(6) + 1;
                              r_dice = random.nextInt(6) + 1;
                              r_tries++;
                              r_score = r_score + r_dice + l_dice;
                              print("Right button pressed");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage("images/dice$r_dice.png"),
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          " Player 1",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          " Player 1",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Score",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey /*Colors.lightGreen*/,
                          ),
                        ),
                        Text(
                          " $l_score",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen[100],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          " $r_score",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[100],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Tries",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey /*Colors.lightGreen*/,
                          ),
                        ),
                        Text(
                          " $l_tries",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen[100],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          " $r_tries",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[100],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Expanded(
                //   child: Text(
                //     " Player 2 Score : $r_score  tries: $r_tries",
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       fontSize: 24.0,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.red,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      l_score = 0;
                      r_score = 0;
                      l_tries = 0;
                      r_tries = 0;
                    });
                  },
                  child: Text("Clear Score",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black12),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
