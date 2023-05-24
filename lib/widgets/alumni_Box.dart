import "package:flutter/material.dart";

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
