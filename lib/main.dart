import 'package:flutter/material.dart';
import 'feed.dart';
import 'post.dart';
import 'profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFC6D7E0, // RGB value converted to hexadecimal
          <int, Color>{
            50: Color(0xFFE9EEF2),
            100: Color(0xFFC6D7E0),
            200: Color(0xFFA3C1D1),
            300: Color(0xFF80ABBF),
            400: Color(0xFF5D95AD),
            500: Color(0xFF3A7F9B),
            600: Color(0xFF2D6681),
            700: Color(0xFF23526B),
            800: Color(0xFF193D55),
            900: Color(0xFF0F293F),
          },
        ),
      ),
      home: const MyHomePage(),
      routes: {
        '/feed': (context) => FeedPage(),
        '/post': (context) => PostPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    PostPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
