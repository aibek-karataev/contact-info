import 'package:flutter/material.dart';
import 'package:myinfo/screens/rich_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String? phone;
  String? email;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    const darkGreen = Color.fromRGBO(5, 108, 92, 1);

    void checkFields() {
      if (phone == null || email == null) {
        isActive = false;
      } else {
        isActive = true;
      }
    }

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
          padding: const EdgeInsets.only(top: 30),
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
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
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            phone = value;
                          });
                          checkFields();
                        },
                        decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Phone number",
                          prefixIcon: Icon(
                            Icons.phone,
                            size: 30,
                            color: darkGreen,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            email = value;
                            checkFields();
                          });
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email,
                            size: 30,
                            color: darkGreen,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                    onPressed: isActive
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RichScreen(),
                              ),
                            );
                          }
                        : null,
                    child: const Text("Start"),
                  );
                })
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
