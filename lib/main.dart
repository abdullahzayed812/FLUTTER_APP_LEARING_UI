import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: const SingleChildScrollView(
          child: Column(children: [
        ImageSection(image: "assets/image.jpg"),
        TitleSection(
            title: "Oeschinen Lake Campground",
            description: "Kandersteg, Switzerland"),
        ButtonWithtext(),
        TextSection(
            text:
                "Some large text here, say hello world from flutter technology that i learn now, i try to make it long as long to be like description text Some large text here, say hello world from flutter technology that i learn now, i try to make it long as long to be like description text Some large text here, say hello world from flutter technology that i learn now, i try to make it long as long to be like description text."),
      ])),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 10), child: Text(title)),
                  Text(description, style: TextStyle(color: Colors.grey[500]))
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            const Text("41")
          ],
        ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.icon, required this.text});

  static const Color color = Colors.amber;

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Icon(icon),
        ),
        Text(text)
      ],
    );
  }
}

class ButtonWithtext extends StatelessWidget {
  const ButtonWithtext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonSection(icon: Icons.call, text: "Call"),
            ButtonSection(icon: Icons.near_me, text: "Near me"),
            ButtonSection(icon: Icons.share, text: "Share"),
          ],
        ));
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Text(
          text,
          softWrap: true,
        ));
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, fit: BoxFit.cover);
  }
}
