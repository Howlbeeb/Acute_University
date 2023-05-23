import 'package:acute_university/Screens/loginpage.dart';
import 'package:acute_university/widgets/Textfieldwidget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 72.0,
                      width: 85.71,
                      child: Image(
                        image: AssetImage('images/logo1.png'),
                      ),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Container(
                      height: 54.0,
                      width: 110.0,
                      child: Image(image: AssetImage('images/Logo2.png')),
                    ),
                    SizedBox(
                      height: 64.0,
                    ),
                    Input(hint: 'Full name'),
                    SizedBox(
                      height: 18.0,
                    ),
                    Input(
                      hint: 'Department',
                      icon: Icon(Icons.keyboard_arrow_down),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Input(
                        hint: 'Course', icon: Icon(Icons.keyboard_arrow_down)),
                    SizedBox(
                      height: 18.0,
                    ),
                    Input(hint: 'Phone number'),
                    SizedBox(
                      height: 18.0,
                    ),
                    Input(
                      hint: 'Password',
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 280),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          primary: Color(0xFF004ADD),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already you have an account?",
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                color: Color(0xFF004ADD),
                              ),
                            ),
                          )
                        ])
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
