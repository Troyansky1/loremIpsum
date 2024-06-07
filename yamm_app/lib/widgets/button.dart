import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final String label;

  const LoginButton({super.key, required this.label});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 160,
      child: TextButton(
        onPressed: () => {},
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0xFFEDE3D5)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color.fromARGB(255, 84, 38, 11))))),
        child: Text(widget.label),
      ),
    );
  }
}
