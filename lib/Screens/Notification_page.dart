import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: SvgPicture.asset(''),
      ),
    );
  }
}
