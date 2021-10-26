import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:meditations_app/screen/meditation_app_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showBackButton: true,
          showNextButton: true,
          showSkipButton: true,
          onTapDoneButton: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MeditationAppScreen())),
        ),
      ),
      title: 'Intro Meditation',
      theme: ThemeData.dark(),
    );
  }
}

final pages = [
  PageViewModel(
    pageColor: Colors.black,
    body: const Text(
        'Choose the right setting to focus. Silence is your friend.'),
    title: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Follow the situation',
            speed: const Duration(milliseconds: 175)),
      ],
    ),
    textStyle: const TextStyle(color: Colors.white, fontSize: 30),
    mainImage: Image.asset(
      'meditation_images/manBsml.jpg',
      fit: BoxFit.cover,
      alignment: Alignment.center,
    ),
  ),
  PageViewModel(
    pageColor: Colors.black,
    body: const Text('Experiment and try. Until then, start with the sounds.'),
    title: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Try different techniques',
            speed: const Duration(microseconds: 175))
      ],
    ),
    textStyle: const TextStyle(color: Colors.white, fontSize: 30),
    mainImage: Image.asset(
      'meditation_images/manY.jpg',
      fit: BoxFit.cover,
    ),
  ),
  PageViewModel(
    pageColor: Colors.black,
    body: const Text(
        'Our application will help you comprehend relaxation. Use and enjoy.'),
    title: AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText('Use apps', speed: const Duration(milliseconds: 175)),
      ],
    ),
    textStyle: const TextStyle(color: Colors.white, fontSize: 30),
    mainImage: Image.asset(
      'meditation_images/girlY.jpg',
      fit: BoxFit.cover,
    ),
  )
];
