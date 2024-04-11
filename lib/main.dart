import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sound'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  final double iconSize = 60;

  void playFile(String assetName) {
    player.play(AssetSource(assetName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: <Widget>[
            ElevatedButton(
                child: Icon(Icons.air, size: iconSize),
                onPressed: () {
                  playFile('soundfiles/fart.wav');
                }),
            ElevatedButton(
                child: Icon(Icons.sentiment_very_satisfied, size: iconSize),
                onPressed: () {
                  playFile('soundfiles/laughter.wav');
                }),
            ElevatedButton(
                child: Icon(Icons.directions_car, size: iconSize),
                onPressed: () {
                  playFile('soundfiles/carhorn.wav');
                }),
            ElevatedButton(
                child: Icon(Icons.sign_language, size: iconSize),
                onPressed: () {
                  playFile('soundfiles/clapping.wav');
                }),
          ],
        ),
      ),
    );
  }
}
