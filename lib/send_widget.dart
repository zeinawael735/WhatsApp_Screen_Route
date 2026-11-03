import 'package:flutter/material.dart';

class SendWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Color(0Xff168C4B),
      child: Image.asset("assets/icons/Mic.png", width: 24, height: 24),
    );
  }
}
