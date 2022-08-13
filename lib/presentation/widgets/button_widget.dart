import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonTitle;
  final Color buttonBackgroundColor;
  final Color buttonForegroundColor;
  final Color buttonSideColor;

  const ButtonWidget({
    Key? key,
    required this.buttonTitle,
    required this.buttonBackgroundColor,
    required this.buttonForegroundColor,
    required this.buttonSideColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: buttonBackgroundColor,
            foregroundColor: buttonForegroundColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: buttonSideColor),
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          buttonTitle,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
