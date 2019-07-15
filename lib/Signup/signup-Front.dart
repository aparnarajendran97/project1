import 'package:flutter/material.dart';
import 'package:design1/Signup/SignupCustomer.dart';
import 'package:design1/Signup/SignupBusiness.dart';

class signupmain extends StatelessWidget {
  static String tag = 'signup_front';
  final routes = <String, WidgetBuilder>{
    //Customer.tag: (context) => Customer(),
   // Business.tag: (context) => Business(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' WELCOME TO CLOUDGM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),

      home: SignupFront(),
      routes: routes,
    );
  }
}

class SignupFront extends StatefulWidget {
  static String tag = 'signup_front';

  @override

  SignupPageState createState() => new  SignupPageState();
}

class SignupPageState extends State<SignupFront> {
  static String tag = 'signup_front';
  @override
  Widget build(BuildContext context) {
    final val=Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Sign Up",
        style: TextStyle(fontSize: 30),
      ),
    );
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 80.0,
        child:
        Image.asset('assets/logo1.JPG'),
      ),
    );

    final Customer1 = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Customer() ));
        },
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text('Sign Up as Customer', style: TextStyle(color: Colors.black)),
      ),
    );

    final Business1 = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Business()));
        },
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text('Sign Up as Business ', style: TextStyle(color: Colors.black)),
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
            Customer1,
            Business1,

          ],
        ),
      ),
    );

  }
}


