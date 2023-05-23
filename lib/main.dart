import 'package:flutter/material.dart';

import 'Screens/loginpage.dart';

void main()=>runApp(AcuteUniversity());

class AcuteUniversity extends StatelessWidget {
  const AcuteUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme:ThemeData(
      fontFamily: 'Sansation',
      primaryColor: Color(0xFF004ADD),
      scaffoldBackgroundColor:Colors.white,

    ),
    home: LoginPage(),);
  }
}
