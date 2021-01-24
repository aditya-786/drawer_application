import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name, email, password;
  bool _autoValidate = false;
  GlobalKey<FormState> _key = new GlobalKey();

  _submitButton() {
    if (_key.currentState.validate()) {
      _key.currentState.save();

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    name: name,
                    email: email,
                    password: password,
                  )));
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),
      body: Container(
        key: _key,
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                child: Card(
                  color: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Codeforces_logo.svg/1200px-Codeforces_logo.svg.png"),
                        // height: 100.0,
                        // width: 100.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: TextFormField(
                          validator: (input) {},
                          decoration: InputDecoration(
                            //hintText: "Enter Name",
                            labelText: 'Name',
                          ),
                          onSaved: (input) => name = input,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return "Enter Email";
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Email",
                          ),
                          onSaved: (input) => email = input,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.vpn_key),
                        title: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          obscuringCharacter: "*",
                          autocorrect: false,
                          validator: (input) {
                            if (input.isEmpty) {
                              return "Enter Password";
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          onSaved: (input) => password = input,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      ButtonTheme(
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.red,
                          onPressed: _submitButton,
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
