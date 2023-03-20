import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController _textController = TextEditingController();
  final List<String> _texts = []; // list to store entered texts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      
      body: Column(
        children: [
          TextFormField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: '  What\'s on your mind?',
            ),
          ),

          const SizedBox(height: 16), 

          ElevatedButton(
            onPressed: () {
              setState(() {
                _texts.add(_textController.text); // add entered text to the list
              });
              _textController.clear(); // clear text input
            },
            child: const Text('Add'),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _texts.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        _texts[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
