import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:loginform/pages/homepage.dart';


class Registrationform extends StatefulWidget {
  static const String routeName='/Registration-form';
  
  @override
  _RegistrationformState createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmpassword;
  bool _termsChecked=false;
  bool _termsChecked1=false;
  bool _termsChecked2=false;
int radioValue=-1;
int radio1Value=-1;
bool _autoValidate= false;
DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[300],
      key: _scaffoldKey,
      appBar: AppBar(backgroundColor: Colors.grey[300],
        title: const Text('Registration Form'),
        
      ),
      body: SingleChildScrollView(
        
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 25.0,),
                  _buildName(),
                  const SizedBox(height: 25.0,),
                _buildEmail(),
                  const SizedBox(height: 25.0,),
              _buildPassword(),
                  const SizedBox(height: 25.0,),
                  _buildconfirmPassword(),
                  const SizedBox(height: 25.0,),
  
                  _buildPhoneNumber(),
                  const SizedBox(height: 25.0,),
                  _buildPhoneNumber1(),
                  const SizedBox(height: 25.0,),
                  _buildgender(),
                  const SizedBox(height: 25.0,),
                 _buildmartialstatus(),
                  const SizedBox(height: 25.0,),
                  _buildDateofBirth(),
                  const SizedBox(height: 25.0,),
                    _buildterms(),
                  const SizedBox(height: 25.0,),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 10.0,),
                      Expanded(child:
                      RaisedButton(color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)
                        ),
                        onPressed: _validateInputs,
                        child: const Text('Login'),
                      ),
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(child:
                      RaisedButton(color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)
                        ),
                        onPressed: null,
                        child: const Text('Cancel'),
                      ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
  
  
  
  
  
  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Name',
          icon: Icon(Icons.account_box),
          labelText: 'Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
      },
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
        email = value;
      },
      validator: _validateEmail,
      keyboardType: TextInputType.emailAddress,
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


  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password',
          hintText: 'Password',
          icon: Icon(Icons.lock),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      onSaved: (String value) {
        password = value;
      },
      validator: _validatePassword,
      obscureText: true,
    );
  }

  String _validatePassword(String value) {
    if (value.length > 5) {
      return null;
    }
  
    return 'Password must be upto 6 characters';
  }


  Widget _buildconfirmPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Confirm Password',
          hintText: 'Confirm Password',
          icon: Icon(Icons.lock),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      onSaved: (String value) {
        confirmpassword = value;
      },
      validator: _validateconfirmPassword,
      obscureText: true,
    );
  }
  String _validateconfirmPassword(String value) {
    if (value.length > 5) {
      return null;
    }
  
    return 'Password must be upto 6 characters';
  }
  
  
  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Phone Number',
          icon: Icon(Icons.phone_android),
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone Number is Required';
        }
        if (value.length < 10) {
          return 'Must be more than 10 digits';
        }
        return null;
      },
      onSaved: (String value) {
      },
    );
  }

  Widget _buildPhoneNumber1() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Additional Phone Number',
          icon: Icon(Icons.phone_android),
    
          labelText: 'Additional Phone Number',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
      keyboardType: TextInputType.phone,
      onSaved: (String value) {
      },
    );
  }


  Widget _buildgender() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Select Gender:',style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.start,
        ),
        RadioListTile<int>(
            title: const Text('Male'),
            value: 0,
            groupValue: radioValue,
            onChanged: handleRadioValueChange),
        RadioListTile<int>(
            title: const Text('Female'),
            value: 1,
            groupValue: radioValue,
            onChanged: handleRadioValueChange),
        RadioListTile<int>(
            title: const Text('Transgender'),
            value: 2,
            groupValue: radioValue,
            onChanged: handleRadioValueChange),
      ],
    );
  }


  void handleRadioValueChange(int value) {
    print(value);
    setState(() => radioValue = value);
  }

  Widget _buildmartialstatus() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Select Marital Status',style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.start,
          ),
          RadioListTile(
              title: const Text('Single'),
              value: 0,
              groupValue: radio1Value,
              onChanged: handleRadio1ValueChange),
          RadioListTile(
              title: const Text('Married'),
              value: 1,
              groupValue: radio1Value,
              onChanged: handleRadio1ValueChange)
        ],
      ),
    );
  }
  void handleRadio1ValueChange(int value) {
    print(value);
    setState(() => radio1Value = value);
  }

  
  
  Widget _buildDateofBirth() {
    return Container(
      
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Date of Birth:', style: TextStyle(fontSize: 18.0),),
          Container(height: 50,
            
            child: CupertinoDatePicker(backgroundColor: Colors.grey[300],
              initialDateTime: _dateTime,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime dateTime) {
                setState(() {
                  _dateTime = dateTime;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildterms() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Select Occupation:', style: TextStyle(fontSize: 18.0),),
  
        CheckboxListTile(
            title: const Text('Student'),
            value: _termsChecked,
            onChanged: (bool value) => setState(() => _termsChecked = value)),
        CheckboxListTile(
          title: const Text('Employed'),
          value: _termsChecked1,
          onChanged: (bool value) => setState(() => _termsChecked1 = value),
        ),
        CheckboxListTile(
          title: const Text('Business'),
          value: _termsChecked2,
          onChanged: (bool value) => setState(() => _termsChecked2 = value),
        ),
      ],
    );
  }

  void _validateInputs() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      // Text forms has validated.
      // Let's validate radios and checkbox
      if(confirmpassword!=password){
        _showSnackBar("Password doesn't  match." );
      }
      if (radioValue < 0) {
        // None of the radio buttons was selected
        _showSnackBar('Please select you Gender');
      } else if (radio1Value < 0) {
        _showSnackBar('Please select your MaritalStatus');
      } else if (!_termsChecked&&!_termsChecked1&&!_termsChecked2) {
        _showSnackBar('Please select Your Profession');
      } else
      {
        // Every of the data in the form are valid at this point
        form.save();
       
        const AlertDialog(
          content: Text('All inputs are valid'),
        );
        Navigator.of(context).pushNamed(HomeScreen.routeName);
      }
    } else {
      setState(() => _autoValidate = true);
    }
  }


  void _showSnackBar(String message) {
    final SnackBar snackBar = SnackBar(
      content: Text(message),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

}
