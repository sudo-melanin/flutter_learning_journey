import 'package:flutter/material.dart';

void main() {
  runApp(const MyLearningApp());
}

class MyLearningApp extends StatelessWidget {
  const MyLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning Journey",
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("My Learning Journey"),
          centerTitle: true,
          actions: const [
            Icon(Icons.search),
            Icon(Icons.notifications),
          ],
        ),
        // FIXED: Wrapped Column in Center to fix horizontal alignment
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text(
                "Foundation 1",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // SPACING BRICK: 16 pixels of height
              const SizedBox(height: 16), 
              const Text("Second element for the Column parent widget"),
              // SPACING BRICK: 24 pixels of height
              const SizedBox(height: 24),
              const Icon(Icons.check_circle, color: Colors.green, size: 48),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  print("New Brick added to the Column parent widget");
                }, // Disabled button
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Set background color to blue accent
                  foregroundColor: Colors.white, // Set text color to white
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Add padding for better appearance
                ),
                child: Text("New Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}