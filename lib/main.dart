import 'package:alif/list%20page.dart';
import 'package:alif/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first app"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ListPage()));
                  },
                  child: Text("List Page")),
              SizedBox
                (height: 20,
              ),
              ElevatedButton(
                  onPressed: (){

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>LogInPage()));
                  },
                  child: Text("Log In Page")),
            ],
          ),
        ),
      ),
    );
  }
}
