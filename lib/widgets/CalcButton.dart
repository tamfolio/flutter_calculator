import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  CalcButton(
      {required this.text,
      this.textColor = 0xFFFFFFFF,
      required this.fillColor,
      this.textSize = 28,
      required this.callback});
  final String text;
  final int textColor;
  final double textSize;
  final int fillColor;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSize)),
          ),
          onPressed: () {
            callback(text);
          },
          color: Color(fillColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
