import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name, email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),
      body: Container(
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
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Enter Name';
                            }
                            return 'Nice';
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Name",
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
                            return "Nice";
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
                            return "Nice";
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
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.red,
                        onPressed: () {},
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
