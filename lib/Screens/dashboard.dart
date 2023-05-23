import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 54,
                            child: Text(
                              "Welcome Olumuyiwa,",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xFF004ADD),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 15,
                            width: 100,
                            child: Text(
                              'It’s time to learn..',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF5586E8),
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 100,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              child: Image(
                                image: AssetImage('images/avatar.png'),
                              ),
                              backgroundColor: Colors.red,
                              radius: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 366,
                  height: 185,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF004ADD)),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recent Activities',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000F2C),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Container(
                      width: 51,
                      height: 21,
                      decoration: BoxDecoration(),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Color(0xFF00256F),
                          side: BorderSide(
                            color: Color(0xFF00256F),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    Alumnibox(),
                    SizedBox(
                      width: 10,
                    ),
                    Alumnibox(),
                    SizedBox(width: 10),
                    Alumnibox(),
                    SizedBox(width: 10),
                    Alumnibox()
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'My Courses',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000F2C),
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: 51,
                      height: 21,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            primary: Color(0xFF00256F),
                            side: BorderSide(color: Color(0xFF00256F))),
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF00256F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 133,
                      height: 157,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffDDDDDD),
                            blurRadius: 6.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff004ADD),
                            radius: 34,
                            child: SvgPicture.asset(
                                'assets/icons/linear/backward.svg',color: Color(0xffff0099),),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [Icon(Icons.home)],
      ),
    );
  }
}

class Alumnibox extends StatelessWidget {
  const Alumnibox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.79),
        color: Color(0xFFCCDBF8),
      ),
      width: 83,
      height: 85,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/logo1.png'),
              width: 21.64,
              height: 18.02,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Text(
                "Alumni Album",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.03,
                  color: Color(0xFF004ADD),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
