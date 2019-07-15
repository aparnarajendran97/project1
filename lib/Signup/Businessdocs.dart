import 'package:flutter/material.dart';
import 'package:design1/Signup/DashedRect.dart';
import 'package:dashed_container/dashed_container.dart';
class BusinessDocs extends StatefulWidget {
  //static String tag = 'SignupCustomer';
  @override
  BusinessDocsState createState() => new BusinessDocsState();
}

class BusinessDocsState extends State<BusinessDocs>
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
        "Business Documents",
        style: TextStyle(fontSize: 30),
      ),
    );
    final dash= DashedContainer(
      child: Container(
        height: 100.0,
        width: 200.0,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(00.0)),
      ),
      dashColor: Colors.blue,
      borderRadius: 00.0,
      dashedLength: 3.0,
      blankLength: 4.0,
      strokeWidth: 3.0,
    );
    final dash1= DashedContainer(
      child: Container(
        height: 100.0,
        width: 200.0,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(00.0)),
      ),
      dashColor: Colors.blue,
      borderRadius: 00.0,
      dashedLength: 3.0,
      blankLength: 4.0,
      strokeWidth: 3.0,
    );

    final dot1= Container(
      height: 60,
      width: 60,
      color: Colors.white,
      child: DashedRect(color: Colors.blue, strokeWidth: 2.0, gap: 3.0,),
    );
    final dot2= Container(
      height: 40,
      width: 60,
      color: Colors.white,
      child: DashedRect(color: Colors.white, strokeWidth: 2.0, gap: 3.0,),
    );


    final SaveButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(00),
        ),
        onPressed: () {
        },
        padding: EdgeInsets.all(18),
        color: Colors.blue,
        child: Text('Save', style: TextStyle(color: Colors.white)),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            backbtn,
            head,
            dot2,
            //dash,
            dot1,
            //dash1,
            dot2,
            dot1,
            dot2,
            dot2,
            dot2,
            dot2,
            SaveButton,
          ],
        ),
      ),
    );
  }
}
