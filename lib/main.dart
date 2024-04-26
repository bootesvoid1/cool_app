import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // ...

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'ncm15BxP6viyz6nt', // YouTube video ID
  flags: YoutubePlayerFlags(
    autoPlay: true,
    mute: false,
  ),
);
  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define your app's color scheme here
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lesson 1 : Flutter Basics for beginners'),
          actions: [
            // Add buttons for settings, full screen, etc. (optional)
          ],
        ),
        body: Stack(
          children: [
            // Background image or color container (optional)
            Container(
              color: Colors.grey[200], // Example background color
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 300, // Adjust video player height as needed
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: YoutubePlayer(controller: _controller),
),
                    ),
                  ),
                  SizedBox(height: 20.0), // Add spacing between video and text
                  Text(
                    'LESSON #1',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Lorem ipsum dolor sit amet...'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
