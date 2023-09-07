import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterBtn extends StatefulWidget {
  final Color bgColor;
  final Color textColor;
  final String text;
  final VoidCallback onTap;

  const RegisterBtn({
    Key? key,
    this.bgColor = Colors.black,
    this.textColor = Colors.white,
    this.text = "Register",
    required this.onTap,
  }) : super(key: key);

  @override
  State<RegisterBtn> createState() => _RegisterBtnState();
}

class _RegisterBtnState extends State<RegisterBtn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: size.height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Shadow color
              blurRadius: 10, // Adjust the blur radius for the shadow effect
              spreadRadius: 2, // Adjust the spread radius for the shadow effect
              offset: Offset(0, 4), // Adjust the shadow offset
            ),
          ],
        ),
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 60),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
              color: widget.textColor,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
