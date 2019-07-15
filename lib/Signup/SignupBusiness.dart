import 'package:flutter/material.dart';
import 'package:design1/Signup/signup-Front.dart';
import 'package:design1/Signup/CompleteBusinessProf.dart';
class Business extends StatefulWidget {
  static String tag = 'SignupCustomer';
  @override
  BusinessState createState() => new BusinessState();
}

class BusinessState extends State<Business>
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
        "Signup",
        style: TextStyle(fontSize: 30),
      ),
    );

    final username= TextField(
      decoration: InputDecoration(labelText: 'username',) ,

    );

    final email= TextField(
      decoration: InputDecoration(labelText: 'email',hintText: 'example@gmail.com',) ,

    );
    /*Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Sign Up",
        style: TextStyle(fontSize: 30),
      ),
    );
    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'example@gmail.com',
      decoration: InputDecoration(
        hintText: 'example@gmail.com',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(00.0)),
      ),
    ); */

    final mobile= TextField(
      decoration: InputDecoration(labelText: 'Mobile',filled: false,) ,

    );
    final password = TextField(
      keyboardType: TextInputType.text,
     // controller: _userPasswordController,
      obscureText: passwordVisible,
      autofocus: false,
      //initialValue: 'some password',
      //obscureText: true,

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
        //contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    /*void navi(){
      Navigator.of(context).pushNamed(HomePage.tag);
    } */

    final SignupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(00),
        ),
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => CPBusiness()));
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
        child: Text('Sign Up', style: TextStyle(color: Colors.white)),
      ),
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
            username,
            SizedBox(height: 18.0),
            email,
            SizedBox(height:18.0),
            mobile,
            SizedBox(height:18.0),
            password,
            SizedBox(height: 18.0),
            SizedBox(height: 24.0),
            SignupButton,
          ],
        ),
      ),
    );
  }
}
