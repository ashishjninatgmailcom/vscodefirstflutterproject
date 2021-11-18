import 'package:flutter/material.dart';
import 'package:vscodefirstflutterproject/bg_image.dart';
import 'package:vscodefirstflutterproject/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Mybgimage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Card(
                    color: Colors.grey[350],
                    child: Column(
                      children: <Widget>[
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter username",
                                      labelText: "Username"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Enter password",
                                      labelText: "Password"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              //Navigator.push(
                              //    context,
                              //    MaterialPageRoute(
                              //        builder: (context) => HomePage()));

                              Navigator.pushNamed(context, "/home");
                            },
                            child: Text("Sign In"),
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
