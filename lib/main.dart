import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:meditations_app/screen/home_screen.dart';
import 'package:meditations_app/screen/meditation_app_screen.dart';

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
          onTapDoneButton: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => MeditationAppScreen())),
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
    body: const Text('Body'),
    title: const Text('Title'),
    textStyle: const TextStyle(color: Colors.white, fontSize: 40),
    mainImage: Image.asset(
      'meditation_images/womanB.jpg',
      fit: BoxFit.cover,
    ),
  ),
  PageViewModel(
    pageColor: Colors.black,
    body: const Text('Body'),
    title: const Text('Title'),
    textStyle: const TextStyle(color: Colors.white, fontSize: 40),
    mainImage: Image.asset(
      'meditation_images/manB.jpg',
      fit: BoxFit.cover,
    ),
  ),
  PageViewModel(
    pageColor: Colors.black,
    body: const Text('Body'),
    title: const Text('Title'),
    textStyle: const TextStyle(color: Colors.white, fontSize: 40),
    mainImage: Image.asset(
      'meditation_images/youngB.jpg',
      fit: BoxFit.cover,
    ),
  )
];
