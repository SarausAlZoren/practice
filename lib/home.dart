import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void clickMe(){
    print('Button Click');
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25.0),
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.teal[700], Colors.teal[50]],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height / 2.5,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/roomers-logo.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Start now!",
              style: TextStyle(color: Colors.black, fontSize: height / 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Rent a rooms if you are a renter\n Advertise a room if you are an owner ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: height / 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 20,
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.5)),
                    padding: EdgeInsets.all(height / 40),
                    textColor: Colors.white,
                    color: Colors.teal[600],
                    onPressed: () => _onAlertWithCustomContentPressed(context),
                    child: new Text("Owner",),
                  ),
                  new RaisedButton(
                    onPressed: () => _onAlertWithCustomContentPressed(context),
                    textColor: Colors.white,
                    color: Colors.teal[600],
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.5)),
                    padding: EdgeInsets.all(height / 40),
                    child: new Text(
                      "Renter",
                    ),
                  ),
                
                ],
              )
     
          ],
     
        ),
      ),
    );
  }
}
  Widget FadeAlertAnimation(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
  _onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "ROOMERS",
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
            FlatButton(
                onPressed: (){
                //forgot password screen
                },
                textColor: Colors.blue,
                child: Text('Forgot Password ?'),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            color: Colors.cyanAccent[700],
            onPressed: () => Navigator.pop(context),
            child: Text(
              "SIGN-IN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          DialogButton(
            color: Colors.greenAccent[700],
            onPressed: () => Navigator.pop(context),
            child: Text(
              "SIGN-UP",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ]).show();
  }


