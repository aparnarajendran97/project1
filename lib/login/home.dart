import 'package:flutter/material.dart';
import 'package:bsev/bsev.dart';
class LoginFront extends StatelessWidget {
  // static String tag = 'login_front';
  final routes = <String, WidgetBuilder>{
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],

            ),

    );
  }
}

class HomePage extends StatefulWidget {
  //static String tag = 'SignupCustomer';
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>
{
  bool passwordVisible;
  @override
  void initState() {
    passwordVisible = false;
  }

  Widget build(BuildContext context) {
final val=Container(
  padding: new EdgeInsets.only(left: 10.0,right: 10.0,top: 40.0),
  margin: const EdgeInsets.only(),
  child: new Material(
      borderRadius: const BorderRadius.all(const Radius.circular(00.0)),
      elevation: 2.0,
      child: new Container(
        height: 45.0,
        margin: new EdgeInsets.only(left: 16.0,right: 16.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
                child: new TextField(
                  maxLines: 1,
                  decoration: new InputDecoration(
                      icon: Icon(Icons.search, color: Theme.of(context).accentColor,),
                      hintText:"Search Your Products",
                      border: InputBorder.none
                  ),
                )
            )
          ],
        ),
      ),
  ),
);




    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            val,
          ],
        ),
      ),
    );
  }

}

