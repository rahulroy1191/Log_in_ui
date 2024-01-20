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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo App",
      home: HomeScreen(),
    );
  }
}

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(
      double.infinity,
      50,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.network("https://shorturl.at/belN7"),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 15, right: 15),
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: "Gamil",
                                label: Text("gmail"))),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon: Icon(Icons.remove_red_eye_outlined),
                              hintText: "Password",
                              label: Text("Password")),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Log In"),
                          style: buttonStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),SizedBox(height: 100,),ElevatedButton(onPressed: (){},
                            child: Text("Create New Accoutn",
                              ),style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50),shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                          ),),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
