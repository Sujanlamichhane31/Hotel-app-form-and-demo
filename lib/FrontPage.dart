import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginform/pages/Login.dart';
import 'package:loginform/pages/Registration.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              color:  Colors.black54,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: kToolbarHeight +40,),
                  Expanded(child: Column(
                    children: <Widget>[
                      Text('Welcome',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      Text('Welcome to the Hotel Nepal. \n Hope You will find what you are looking for...',
                      style: TextStyle(color: Colors.white70,
                          fontSize: 18.0
                      ),
                          textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 10.0,),
                      Expanded(child: RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: const Text('Login'),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext c)=>LoginPage()
                            ),
                            );
  
                          }),
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child:RaisedButton(
                        color:Colors.red,
                        textColor:Colors.white,
                        elevation:0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Text('Signup'),
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext c)=>Registrationform()
                          ),
                          );
                          },
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                    ],
                  ),
                  const SizedBox(width: 40.0,),
                  OutlineButton.icon(
                    borderSide: BorderSide(color: Colors.red),
                    color:Colors.red,
                    textColor:Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    icon:Icon(FontAwesomeIcons.google),
                    label:const Text('Continue with Google'),
                    onPressed: (){
                    },
                  ),
                  const SizedBox(height: 5.0,),
                  OutlineButton.icon(
                    borderSide: BorderSide(color: Colors.red),
                    color:Colors.red,
                    textColor:Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    icon:Icon(FontAwesomeIcons.facebook, color: Colors.indigo,),
                    label:const Text('Continue with Facebook'),
                    onPressed: (){
                    },
                  ),
                  const SizedBox(height: 20.0,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
