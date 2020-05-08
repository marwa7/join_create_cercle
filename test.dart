import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class testPage extends StatefulWidget {
  @override
  _testPageState createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff739D84),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
              decoration: BoxDecoration(
                  color: Color(0xffF2E9DB),
                  //boxShadow: [BoxShadow(
                  //color: Color(0xffF2E9DB),
                  //blurRadius: 20,
                  //offset: Offset(0.0, 10.0)
                  //)],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                      bottomRight: Radius.circular(60.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    "Rejoignez un cercle ? ",
                    style: TextStyle(
                        color: Color(0xff739D84),
                        fontSize: 25.0 ,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Veuillez entrer votre code d'invitation",
                    style: TextStyle(
                        color: Color(0xff739D84),
                        fontSize: 18.0 ,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    widthFactor: 350,
                    child: OTPTextField(
                      length: 6,
                      width: 350,
                      fieldWidth: 50,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff739D84),
                          fontWeight: FontWeight.bold),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      keyboardType: TextInputType.text,
                      fieldStyle: FieldStyle.box,
                      onChanged: (pin) {
                        //yasmine hna you can add
                      },
                      onCompleted: (pin) {
                        //meme hna bedli le code
                        print("Completed: " + pin);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('NOTE : Vous pouvez demander le code au créateur du cercle',
                    style: TextStyle(
                        color: Color(0xff739D84),
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: 300.0,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () => print('button pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          color: Color(0xffF1B97A),
                          child: Text(
                            'Confirmer mon code',
                            style: TextStyle(
                                color: Color(0xffE8652D),
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '______________________ OU ______________________',
                    style: TextStyle(
                        color: Color(0xffF2E9DB),
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    "Vous n'avez pas de code ?",
                    style: TextStyle(
                        color: Color(0xffF2E9DB),
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0),
                  ),
                  Text(
                    "On va vous donner un code",
                    style: TextStyle(
                        color: Color(0xffF2E9DB),
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0),
                  ),
                  Text(
                    "pour le partager",
                    style: TextStyle(
                        color: Color(0xffF2E9DB),
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: 300.0,
                        child: RaisedButton(
                          elevation: 5.0,
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          color: Color(0xffE8652D),
                          child: Text(
                            'Créer mon cercle',
                            style: TextStyle(
                                color: Color(0xffF1B97A),
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  moveToLastSreen() {
    Navigator.pop(context);
  }
}
