import 'package:flutter/material.dart';
import 'package:meditations_app/items/meditation_item.dart';

class MeditationAppScreen extends StatefulWidget {
  MeditationAppScreen({Key? key}) : super(key: key);

  @override
  _MeditationAppScreenState createState() => _MeditationAppScreenState();
}

class _MeditationAppScreenState extends State<MeditationAppScreen> {
  final List<Item> items = [
    Item(
        itemName: "Forest",
        audioPath: "meditation_audio/forest.mp3",
        imagePath: "meditation_images/forest.jpeg"),
    Item(
        itemName: "Night",
        audioPath: "meditation_audio/night.mp3",
        imagePath: "meditation_images/night.jpeg"),
    Item(
        itemName: "Ocean",
        audioPath: "meditation_audio/ocean.mp3",
        imagePath: "meditation_images/ocean.jpeg"),
    Item(
        itemName: "Waterfall",
        audioPath: "meditation_audio/waterfall.mp3",
        imagePath: "meditation_images/waterfall.jpeg"),
    Item(
        itemName: "Wind",
        audioPath: "meditation_audio/wind.mp3",
        imagePath: "meditation_images/wind.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              child: ListTile(
                title: Text(items[index].itemName),
              ),
            );
          }),
    ));
  }
}
