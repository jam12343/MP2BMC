import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC Flutter"),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body:Builder(builder:(context)=> Center (
                child: Column(children: [
              Text(
                'Hello NIKI WORLD',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900]),
              ),
              Text(
                'NIKI WORLD',
                style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
              ),
                  Image.network('https://pop.inquirer.net/files/2020/04/PROFILE-WIDE.jpg',
                      height: 350,
                  ),
                  ElevatedButton(
                    child: Text ('Contact Us'),
                      onPressed: () => contactUs(context),
                  )
            ])))));
  }
}//end Line of my class

void contactUs(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text('Contact Me'),
          content: Text('Mail us at Helloworld.com'),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'))
          ],
        );
      });
}