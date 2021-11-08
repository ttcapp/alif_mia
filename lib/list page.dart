import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

List <String> stdList = [
  "alif",
  "Tamgid",
  "rafi",
  "afif",
  "sakib",
  "ratul"

];

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "list view page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: stdList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 50,
                        width: 180,
                        color: Colors.blue,
                        child: Text(stdList[index])),
                  );
                }),
          )
        ],
      ),
    );
  }
}
