import 'package:flutter/material.dart';
import 'package:loginform/pages/homepage.dart';

class LoginPage extends StatefulWidget {
 static const String routeName='/login-page';
 
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email1;
  String password1;
  bool _autoValidate= false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
    appBar: AppBar(
      backgroundColor: Colors.grey[300],
      title: const Text('Login'),
    ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
              key:_formKey,
              autovalidate: _autoValidate,
              child: Column(
              children: <Widget>[
                
                const SizedBox(height: 20.0,),
                _buildEmail(),
                const SizedBox(height: 20.0,),
                _buildPassword(),
                const SizedBox(height: 20.0,),
  
                RaisedButton(color: Colors.white,
                  onPressed: _validateInputs,
                  child: const Text('Login'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  ),
                )

              ],
              )),
        ),
      ),
    
    
    );
  }


  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email',
          hintText: 'Email',
          icon: Icon(Icons.mail),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      onSaved: (String value) {
        email1 = value;
      },
      validator: _validateEmail,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password',
          hintText: 'Password',
          icon: Icon(Icons.lock),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      onSaved: (String value) {
        password1 = value;
      },
      validator: _validatePassword,
      obscureText: true,
    );
  }


  String _validateEmail(String value) {
    if (value.isEmpty) {
      // The form is empty
      return 'Enter email address';
    }
    // This is just a regular expression for email addresses
    const String p = '[a-zA-Z0-9\+\.\_\%\-\+]{1,256}' +
        '\\@' +
        '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}' +
        '(' +
        '\\.' +
        '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}' +
        ')+';
    final RegExp regExp = RegExp(p);
  
    if (regExp.hasMatch(value)) {
      // So, the email is valid
      return null;
    }
  
    // The pattern of the email didn't match the regex above.
    return 'Email is not valid';
  }

  String _validatePassword(String value) {
    if (value.length > 5) {
      return null;
    }
  
    return 'Password must be upto 6 characters';
  }

  void _validateInputs() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    } else {
      setState(() => _autoValidate = true);
    }
  }
  
}
