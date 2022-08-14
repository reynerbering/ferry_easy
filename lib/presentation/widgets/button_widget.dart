import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.buttonTitle,
    required this.buttonBackgroundColor,
    required this.buttonForegroundColor,
    required this.buttonSideColor,
  }) : super(key: key);

  final Color buttonBackgroundColor;
  final Color buttonForegroundColor;
  final Color buttonSideColor;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary:
                buttonBackgroundColor, // Background button color for elevated button
            onPrimary:
                buttonForegroundColor, // Foreground button color for elevated button
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
