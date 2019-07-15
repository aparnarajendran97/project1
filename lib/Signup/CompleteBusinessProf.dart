import 'package:flutter/material.dart';
import 'package:design1/Signup/Businessdocs.dart';
class CPBusiness extends StatefulWidget {
  //static String tag = 'SignupCustomer';
  @override
  CPBusinessState createState() => new CPBusinessState();
}

class CPBusinessState extends State<CPBusiness>
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
        radius: 60.0,
        child: Image.asset('assets/cp1.JPG'),
      ),
    );
    final busname= TextField(
      decoration: InputDecoration(labelText: 'Business Name',) ,

    );

    final busreg= TextField(
      decoration: InputDecoration(labelText: 'Business Registration Number') ,

    );

    final adress= TextField(
      decoration: InputDecoration(labelText: 'Address') ,

    );
    final email = TextField(
      decoration: InputDecoration(labelText: 'Corporate Email id', hintText: 'example@gmail.com'

      ),
    );
    /*void navi(){
      Navigator.of(context).pushNamed(HomePage.tag);
    } */

    final SaveButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(00),
        ),
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => BusinessDocs()));
        },
        padding: EdgeInsets.all(18),
        color: Colors.blue,
        child: Text('Next', style: TextStyle(color: Colors.white)),
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
            busname,
            SizedBox(height: 18.0),
            busreg,
            SizedBox(height:18.0),
            adress,
            SizedBox(height:18.0),
            email,
            SizedBox(height: 18.0),
            SizedBox(height: 24.0),
            SaveButton,
          ],
        ),
      ),
    );
  }
}
