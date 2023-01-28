import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Okurken çalışmak çok zor!',
          style: TextStyle(
            backgroundColor: Colors.black,
            color: Colors.white,
            fontSize: 26, fontStyle: FontStyle.italic,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
      ),
    );
  }
}
