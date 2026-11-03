import 'package:flutter/material.dart';

class TypeMessageWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(39),
            borderSide: BorderSide(
              color: Color(0Xff168C4B),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(39),
            borderSide: BorderSide(
              color: Color(0Xff168C4B),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),

          suffixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/icons/Send.png", width: 24, height: 24),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/icons/Camera.png",
              width: 24,
              height: 24,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(39),
            borderSide: BorderSide(
              color: Color(0Xff168C4B),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          hintText: "Type a message...",
          hintStyle: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
