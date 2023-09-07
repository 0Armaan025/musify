// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AwesomeTextField extends StatefulWidget {
  final String labelText;
  final bool isObscure;
  final TextEditingController controller;
  const AwesomeTextField({
    Key? key,
    required this.labelText,
    required this.isObscure,
    required this.controller,
  }) : super(key: key);

  @override
  State<AwesomeTextField> createState() => _AwesomeTextFieldState();
}

class _AwesomeTextFieldState extends State<AwesomeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 5),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isObscure,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black, // Text color
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontSize: 12.0,
            color: Colors.grey, // Label text color
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:
                  Colors.grey.withOpacity(0.5), // Border color when not focused
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue, // Border color when focused
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
