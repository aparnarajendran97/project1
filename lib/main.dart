import 'package:flutter/material.dart';
import 'package:design1/login/login_Front.dart';
import 'package:design1/Signup/signup-Front.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    //LoginFront.tag: (context) => LoginFront(),
    SignupFront.tag: (context) => SignupFront(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' WELCOME TO CLOUDGM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),

      home: CloudPage(),
      routes: routes,
    );
  }
}
class CloudPage extends StatefulWidget {
  @override

  CloudPageState createState() => new  CloudPageState();
}

class CloudPageState extends State<CloudPage> {


  @override
  Widget build(BuildContext context) {
    final val=Align(
      alignment: Alignment.topCenter,
      child: Text(
        "WELCOME TO CLOUDGM",
        style: TextStyle(fontSize: 30),
      ),
    );
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 80.0,
        child:
        Image.asset('assets/logo.JPG'),
      ),
    );

    final login = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => log()));
        },
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text('login', style: TextStyle(color: Colors.black)),
      ),
    );

    final signup = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

          Navigator.of(context).pushNamed(SignupFront.tag);
        },
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text('Signup', style: TextStyle(color: Colors.black)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,

      body: Center
        (
        child:
        ListView(

          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            val,
            logo,
            SizedBox(height: 40.0),
            login,
            signup,
          ],
        ),
      ),
    );
  }
}


