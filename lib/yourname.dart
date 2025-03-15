import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TaskScreen()));
}

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text('LAB # 3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.red,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(width: 300, height: 300, color: Colors.blue),
              Positioned(
                top: 10,
                right: -20,
                child: Container(
                  width: 180, 
                  height: 180, 
                  color: Colors.green,
                  
                ),
              ),
              Positioned(
                right: 0,
                bottom: -40,
                child: Container(
                  width: 120,
                  height: 300,
                  color: Colors.red.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      9,
                      (i) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '${i + 1}',
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Spacer(),

          Container(
            height: 150,
            width: double.infinity,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("LEADING", style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0'),
                      
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("TRAILING", style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
