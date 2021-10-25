import 'package:flutter/material.dart';
import 'package:meditations_app/items/meditation_item.dart';
import 'package:just_audio/just_audio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeditationAppScreen extends StatefulWidget {
  const MeditationAppScreen({Key? key}) : super(key: key);

  @override
  _MeditationAppScreenState createState() => _MeditationAppScreenState();
}

class _MeditationAppScreenState extends State<MeditationAppScreen> {
  final List<Item> items = [
    Item(
        itemName: "Forest",
        audioPath: "meditation_audios/forest.mp3",
        imagePath: "meditation_images/forest.jpeg"),
    Item(
        itemName: "Night",
        audioPath: "meditation_audios/night.mp3",
        imagePath: "meditation_images/night.jpeg"),
    Item(
        itemName: "Ocean",
        audioPath: "meditation_audios/ocean.mp3",
        imagePath: "meditation_images/ocean.jpeg"),
    Item(
        itemName: "Waterfall",
        audioPath: "meditation_audios/waterfall.mp3",
        imagePath: "meditation_images/waterfall.jpeg"),
    Item(
        itemName: "Wind",
        audioPath: "meditation_audios/wind.mp3",
        imagePath: "meditation_images/wind.jpeg"),
  ];

  final AudioPlayer audioPlayer = AudioPlayer();

  int? playingIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text(
          'Soothing sounds',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(items[index].imagePath),
                    ),
                  ),
                  child: ListTile(
                    title: Text(items[index].itemName),
                    leading: IconButton(
                      icon: playingIndex == index
                          ? const FaIcon(FontAwesomeIcons.stop)
                          : const FaIcon(FontAwesomeIcons.play),
                      onPressed: () async {
                        if (playingIndex == index) {
                          playingIndex = null;
                          setState(() {
                            audioPlayer.stop();
                          });
                        } else {
                          try {
                            audioPlayer.setAsset(items[index].audioPath);
                            await audioPlayer.play();
                            setState(() {
                              playingIndex = index;
                            });
                          } catch (error) {
                            // ignore: avoid_print
                            print(error);
                          }
                        }
                      },
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
