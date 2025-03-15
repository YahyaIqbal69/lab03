import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Demo'),
        ),
        body: Column(
          children: [
            
             Container(
              color: Colors.grey, 
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://picsum.photos/250?image=1',
                fit: BoxFit.cover,
                  
              ),
            ),
            
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      Text('Like'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time, color: Colors.blue),
                      Text('Time'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.green),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
            ),
            
            
            const Spacer(),
            
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  print('Button pressed!');
                },
                child: const Text('Click Me!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}