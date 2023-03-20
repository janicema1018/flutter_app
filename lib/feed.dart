import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  static const List<String> titles = ['Squirrels', 'Arts', 'Campus', 'Games', 'Events'];
  static const List<String> subtitles = ['The squirrels on campus are WAY too cute! 🐿️', 
                                         'Perhaps, you have found time to pick up new hobbies? 🎨', 
                                         'Every time I walk by, I HAVE to take a picture. 📷', 
                                         'TELL THE WHOLE WORLD THIS IS BEAR TERRITORY 🐻', 
                                         'Get free boba from Candid on Match 14! 🥤'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      
      body: ListView.builder(
        itemCount: 5, 
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.asset('assets/images/${index+1}.jpg'), 
                ListTile(
                  title: Text(titles[index]),
                  subtitle: Text(subtitles[index]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
