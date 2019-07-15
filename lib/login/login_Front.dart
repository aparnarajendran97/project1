import 'package:flutter/material.dart';
import 'package:design1/login/home.dart';
class LoginFront extends StatelessWidget {
 // static String tag = 'login_front';
  final routes = <String, WidgetBuilder>{
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    );
  }
}

class log extends StatefulWidget {
  //static String tag = 'SignupCustomer';
  @override
  logState createState() => new logState();
}

class logState extends State<log>
{
  bool passwordVisible;
  @override
  void initState() {
    passwordVisible = false;
  }

  Widget build(BuildContext context) {
    final backbtn = Align(
        alignment: Alignment.topLeft,
        child: IconButton(icon:Icon(Icons.arrow_back,),
          onPressed:() => Navigator.pop(context, false),
        )
    );
    /*IconButton(icon:Icon(Icons.arrow_back,),
      onPressed:() => Navigator.pop(context, false),
    ); */
    final head=Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Login",
        style: TextStyle(fontSize: 30),
      ),
    );

    final email= TextField(
      decoration: InputDecoration(labelText: 'email',hintText: 'example@gmail.com',) ,

    );

    final password = TextField(
      autofocus: false,
      keyboardType: TextInputType.text,
      obscureText: passwordVisible,
      decoration: InputDecoration(
          hintText: 'Password',filled: false,
        suffixIcon: IconButton(
      icon: Icon(
      // Based on passwordVisible state choose the icon
      passwordVisible
      ? Icons.visibility
        : Icons.visibility_off,
        color: Theme.of(context).primaryColorDark,
      ),
      onPressed: () {
        // Update the state i.e. toogle the state of passwordVisible variable
        setState(() {
          passwordVisible = !passwordVisible;
        });
      },
    ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(00),
        ),
        onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (BuildContext context) => HomePage() ));

          /*startTime() async {
            var _duration = new Duration(seconds: 2);
            return new Timer(_duration,navi );
          }
          @override
          void initState() {
            super.initState();
            startTime();
          } */

        },
        padding: EdgeInsets.all(18),
        color: Colors.blue,
        child: Text('Login', style: TextStyle(color: Colors.white)),
      ),
    );
    final act = FlatButton(
      child: Text(
        " Don't you hsve an account?     Sign Up",
        style: TextStyle(color: Colors.black54),

      ),
      onPressed: () {

      },
    );


    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            backbtn,
            head,
            email,
            SizedBox(height:18.0),
            password,
            SizedBox(height: 18.0),
            SizedBox(height: 24.0),
            loginButton,
            act,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
