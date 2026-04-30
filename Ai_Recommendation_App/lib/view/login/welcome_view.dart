import 'package:app/common/color_extension.dart';
import 'package:app/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
                width: media.width,
              ),
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.55,
                height: media.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.width * 0.1),
          Text(
            "Discover the best foods from over 1,000\nresturants and fast delivery to your\ndoorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(title: "Login", onPressed: () {}),
          ),
          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Create an account",
              type: RoundButtonType.textPrimary,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
