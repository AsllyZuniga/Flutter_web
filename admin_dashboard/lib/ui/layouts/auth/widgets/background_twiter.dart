import 'package:flutter/material.dart';

class BackgroundTwiter extends StatelessWidget {
  const BackgroundTwiter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: buildBoxDecoration(),
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image(
                image: AssetImage('twitter-white-logo.png'),
                width: 400,
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
      image: AssetImage('twitter-bg.png'),
      fit: BoxFit.cover,
    ));
  }
}
