import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),

      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 64.0,
                backgroundImage: AssetImage('assets/images/6.jpg'), // load custom profile image
              ),

              SizedBox(height: 16.0),

              Text(
                'Janice Ma',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12.0),

              Text(
                'Age: 23',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),

              SizedBox(height: 32.0),

              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8.0),

              Text(
                'Hello! I\'m a grad student at UC Berkeley!',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
