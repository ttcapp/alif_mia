import 'package:alif/list%20page.dart';
import 'package:flutter/material.dart';

String _email = "abc@gmail.com";
String _password = "123";

final _formKey = GlobalKey <FormState>();

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              key: _formKey,
              child: Column(
                  children: [
                    TextFormField(
                      validator: (text){
                        if(text==null || text.isEmpty){
                          return"This field is empty";
                        }
                      },
              decoration: InputDecoration(
              hintText: "Enter Your Email",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:BorderSide(color: Colors.purple)
              )
        )
    ),
                    TextFormField(
                        decoration: InputDecoration(
                          suffix: Icon(Icons.remove_red_eye),
                            hintText: "Enter Your Password",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:BorderSide(color: Colors.purple)
                            )
                        )
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListPage()));
                    },

                        child: Text("Log In"),)
    ],
    ),
            ),
    ),
    );
  }
}
