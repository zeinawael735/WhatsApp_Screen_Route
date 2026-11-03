import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_session1/send_widget.dart';
import 'package:flutter_whatsapp_session1/typemessage_widget.dart';

import 'bubble_message_widget.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff168C4B),
        title: Row(
          spacing: 15,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
            Text(
              "John Safwat",
              style: TextStyle(
                color: Colors.white,
                fontWeight: .bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        actions: [
          Image.asset("assets/icons/Phone.png", width: 24.5, height: 24),
          SizedBox(width: 10),
          Image.asset("assets/icons/video.png", width: 24.5, height: 24),
          SizedBox(width: 10),
          Image.asset(
            "assets/icons/More-vertical.png",
            width: 24.5,
            height: 24,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,

            decoration: BoxDecoration(
              color: Color(0xff181818),
              image: DecorationImage(
                image: AssetImage("assets/images/background_pattern.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    BubbleMessageWidget(sender: false, text: "Hello!"),
                    const SizedBox(height: 10),

                    BubbleMessageWidget(sender: true, text: "Hello!"),

                    const SizedBox(height: 20),

                    BubbleMessageWidget(
                      sender: false,
                      text: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                      route: false,
                    ),
                    const SizedBox(height: 10),

                    BubbleMessageWidget(
                      sender: false,
                      text: "what a Great Content Tp learn Flutter",
                      route: true,
                    ),

                    const SizedBox(height: 10),

                    BubbleMessageWidget(
                      sender: true,
                      text: "what a Great Content Tp learn Flutter",
                      route: false,
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Expanded(flex: 5, child: TypeMessageWidget()),
                  Expanded(child: SendWidget()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
