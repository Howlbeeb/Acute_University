import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  Input({required this.hint, this.icon, this.color});
  final String? hint;
  final Icon? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF828282)),
          contentPadding:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF2F2F2), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0),),),
          suffixIcon: icon,
          suffixIconColor: color,
          fillColor: Color(0xFFF2F2F2),
          filled: true),
    );
  }
}
