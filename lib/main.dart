import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const darkGreen = Color.fromRGBO(5, 108, 92, 1);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Task 4",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
          color: darkGreen,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/av.jpg"),
                      radius: 80,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Center(
                    child: Text(
                      "Aibek Karataev",
                      style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 48.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  Container(
                      color: Colors.white,
                      height: 50.0,
                      child: InkWell(
                        onTap: () async {
                          // print("Button Clicked");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                right: 15.0,
                                left: 40.0,
                              ),
                              child: const Icon(
                                LineIcons.phone,
                                size: 25.0,
                                color: darkGreen,
                              ),
                            ),
                            const Center(
                              child: Text(
                                "+996 777 888 999",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 22.0,
                                  color: darkGreen,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(height: 20.0),
                  Container(
                    color: Colors.white,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15.0,
                            left: 40.0,
                          ),
                          child: const Icon(
                            Icons.email_outlined,
                            size: 25.0,
                            color: darkGreen,
                          ),
                        ),
                        const Text(
                          "aibekkg@gmail.com",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 22.0,
                            color: darkGreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
