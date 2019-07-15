import 'package:flutter/material.dart';
import 'package:design1/Signup/Businessdocs.dart';
class CPCustomer extends StatefulWidget {
  //static String tag = 'SignupCustomer';
  @override
  CPCustomerState createState() => new CPCustomerState();
}

class CPCustomerState extends State<CPCustomer>
{
  @override
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
        "Complete Profile",
        style: TextStyle(fontSize: 25),
      ),
    );
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/CP2.JPG'),
      ),
    );
    final fname= TextField(
      decoration: InputDecoration(labelText: 'First Name',) ,

    );
    final lname= TextField(
      decoration: InputDecoration(labelText: 'Last Name',) ,

    );

    final nat= TextField(
      decoration: InputDecoration(labelText: 'Nationality') ,

    );

    final ref= TextField(
      decoration: InputDecoration(labelText: 'Promo/Reference code') ,

    );

    final SaveButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(00),
        ),
        onPressed: () { },

          /* Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => BusinessDocs()));
        }, */
        padding: EdgeInsets.all(18),
        color: Colors.blue,
        child: Text('Save', style: TextStyle(color: Colors.white)),
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
            logo,
            fname,
            SizedBox(height: 18.0),
            lname,
            SizedBox(height:18.0),
            nat,
            SizedBox(height:18.0),
            ref,
            SizedBox(height: 18.0),
            SizedBox(height: 24.0),
            SaveButton,
          ],
        ),
      ),
    );
  }
}
