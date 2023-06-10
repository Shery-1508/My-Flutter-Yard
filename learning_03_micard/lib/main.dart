import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: const Center(child: Text("Mi Card"))),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pattern colorful 1.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  image: DecorationImage(
                    image: AssetImage('images/pattern colorful 1.png'),
                    fit: BoxFit.cover,
                    opacity: 0.2,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.multiply),
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage('images/myimg.png'),
                      backgroundColor: Colors.amber[900],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        " Sheharyar Noor",
                        style: TextStyle(
                          fontFamily: 'kablamo',
                          fontSize: 35.0,
                          wordSpacing: 5.0,
                          color: Colors.deepOrange[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.deepOrange[900],
                      indent: 35.0,
                      endIndent: 35.0,
                      thickness: 2.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.deepOrange[900],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.phone_android_outlined,
                          color: Colors.deepOrange[900],
                        ),
                        Icon(
                          Icons.account_box_rounded,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                      padding: EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Linked In",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.account_box_outlined,
                            color: Colors.deepOrange[900],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0, 15.0, 5.0),
                      padding: EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.purple[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Github",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.adb,
                            color: Colors.deepOrange[900],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0, 15.0, 5.0),
                      padding: EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.amber[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Website",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.account_tree_outlined,
                            color: Colors.deepOrange[900],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0, 15.0, 5.0),
                      padding: EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.lightGreen[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Blog",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.add_card_sharp,
                            color: Colors.deepOrange[900],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0, 15.0, 5.0),
                      padding: EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Projects",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.deepOrange[900],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 2,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
