import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  double fontSize;
  //gives size to a buttton
  //Size must be less then 300
  double size;
  //overlay text of a button
  String text;
  //color of a button that changes with animation
  Color color;
  //ontap function must be
  Function onTap;
  Button(
      {
        this.fontSize=40,
        this.size = 300,
      this.text = "Start",
      this.color = Colors.green,
      this.onTap})
      : assert(size < 300);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom:120),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: AnimatedContainer(
          curve: Curves.easeIn,
          duration: Duration(milliseconds: 400),
          height: size + 20,
          width: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Colors.black.withOpacity(.5),
                offset: Offset(3.0, 3.0),
              ),
            ],
          ),
          child: Center(
            child: Text(text,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'baloo',
                  fontSize: fontSize,
                )),
          ),
        ),
      ),
    );
  }
}
