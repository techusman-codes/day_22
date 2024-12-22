import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // text editing controller
  final _textController = TextEditingController();
  // Store what the User type in a variable

  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display the Text
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    userPost,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            // text input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: OutlineInputBorder(),
                // suffix Icons
                suffixIcon: IconButton(
                  onPressed: () {
                    // clear the textfield using the text editing controller
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                // upadet our string variable to get the new user input
                setState(() {
                  userPost = _textController.text;
                });
              },
              color: Colors.blue,
              child: Text(
                'Post',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
