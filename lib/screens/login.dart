import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/screens/login_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * .40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/coffeshop.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Text(
              "Get the best coffee in Algeria!",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.brown),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginForm();
                          }));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontFamily: 'Raleway', color: Colors.white),
                        ),
                        color: darkBrown,
                      )),
                  OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(40, 15, 40, 15),
                      ),
                      shape: MaterialStateProperty.all(StadiumBorder()),
                      side: MaterialStateProperty.all(
                        BorderSide(color: darkBrown),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginForm();
                      }));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(fontFamily: 'Raleway', color: darkBrown),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton.icon(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(40, 15, 40, 15),
                  ),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  side: MaterialStateProperty.all(
                    BorderSide(color: facebookColor),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginForm();
                  }));
                },
                icon: FaIcon(FontAwesomeIcons.facebookF,
                    size: 20, color: facebookColor),
                label: Text(
                  "Connect with Facebook",
                  style: TextStyle(fontFamily: 'Raleway', color: facebookColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
