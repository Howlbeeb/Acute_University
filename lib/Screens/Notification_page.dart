import "package:flutter/material.dart";

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(
                    color: Color(0xff004ADD),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.close,
                  size: 12,
                  color: Color(0xff004ADD),
                )
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 24,
                    color: Color(0xFF000F2C4D).withOpacity(0.3),
                  ),
                  SizedBox(width: 13),
                  Text(
                    "Search Notifications",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000F2C4D).withOpacity(0.3),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
