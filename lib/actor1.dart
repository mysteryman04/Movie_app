import 'package:flutter/material.dart';

class ActorPage extends StatelessWidget {
  final String actorName;

  ActorPage(this.actorName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(actorName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display actor's photo
            Image.network(
              'https://example.com/$actorName.jpg', // Replace with actual URL
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            // Text field for actor's biography
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Biography',
                  border: OutlineInputBorder(),
                ),
                maxLines: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
