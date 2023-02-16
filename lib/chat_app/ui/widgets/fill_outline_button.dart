import 'package:flutter/material.dart';
class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    this.isFilled = true,
    required this.press,
    required this.text,

  }) : super(key: key);

  final bool isFilled;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white),
      ),
        elevation: isFilled ? 8 : 0,
        onPressed: press,
      color: isFilled ? Colors.white : Colors.transparent,
      child: Text(
        text,style: TextStyle(
        color: isFilled ? Colors.blue : Colors.white,
        fontSize: 12
      ),
      ),
    );
  }
}
