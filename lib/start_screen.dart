import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz_logo.png',
                width: 300.0,
                color: const Color.fromARGB(
                  //to add transparency to the image
                  150,
                  255,
                  255,
                  255,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Learn Flutter the fun way!',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: startQuiz,
                icon: Icon(Icons.arrow_right),
                label: Text('Start Quiz'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
