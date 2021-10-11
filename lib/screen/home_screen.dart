import 'package:flutter/material.dart';

// ignore: unused_element
const _expandetImage = Image(
  image: AssetImage('meditation_images/yoga.jpg'),
  fit: BoxFit.cover,
);

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Meditation app'),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: _expandetImage,
              ),
              floating: true,
            )
          ],
        ),
      ),
    );
  }
}
