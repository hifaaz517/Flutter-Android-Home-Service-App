import 'package:flutter/material.dart';

class LoginAndSignupButton extends StatelessWidget {
  final String buttonText;
  final Function function;

  const LoginAndSignupButton({
    this.buttonText,
    this.function,
  });
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: function,
      child: Text(
        buttonText.toString(),
      ),
    );
  }
}
