import 'package:flutter/material.dart';

class BubbleMessageWidget extends StatelessWidget {
  new({
    super.key,
    required this.sender,
    required this.text,
    this.route = false,
  });
  bool sender;
  String text;
  bool route;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: sender ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 270),
        child: Container(
          decoration: BoxDecoration(
            color: sender ? Color(0xff232D36) : Color(0xff168C4B),
            borderRadius: BorderRadiusGeometry.directional(
              topEnd: sender ? Radius.circular(0) : Radius.circular(16),
              topStart: sender ? Radius.circular(16) : Radius.circular(0),
              bottomEnd: Radius.circular(16),
              bottomStart: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.left,

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: .w500,
                  ),
                ),
                ?route ? Image.asset("assets/images/route_image.png") : null,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
