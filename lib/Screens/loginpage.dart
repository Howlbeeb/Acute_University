import 'package:acute_university/Screens/SignupPage.dart';
import 'package:acute_university/Screens/dashboard.dart';
import 'package:acute_university/widgets/Textfieldwidget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                    height: 40,
                  ),
                    Container(height: 117.0,
                      width: 139.29,

                      child: Image(image: AssetImage('images/logo1.png')),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Container(
                      height: 54.0,
                      width: 112.29,
                      child: Image(image: AssetImage('images/Logo2.png')),
                    ),
                    SizedBox(
                      height: 64.0,
                    ),
                    Input(hint: "Email Address"),
                    SizedBox(
                      height: 36,
                    ),
                    Input(
                      hint: "Password",
                      icon: Icon(Icons.remove_red_eye_sharp),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding:EdgeInsets.only(left:246),
                      child: Text(
                        "Forget Password?",
                      ),
                    ),
                    SizedBox(
                      height: 36
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:280),
                      child: TextButton(
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DashboardPage()));},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white,),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          primary: Color(0xFF004ADD),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                    Text(
                      "Don’t you have an account?",
                    ),
                    TextButton(
                      onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()));},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF004ADD),
                        ),
                      ),
                    )])
                  ],
                ),
              ),
            ),
          ),

      ),
    );
  }
}
