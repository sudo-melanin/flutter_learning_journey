import 'package:flutter/material.dart';

void main() {
  runApp(const MyLearningApp());
}

class MyLearningApp extends StatefulWidget {
  const MyLearningApp({super.key});

  @override
  State<MyLearningApp> createState() => _MyLearningAppState();
}

class _MyLearningAppState extends State<MyLearningApp> {
  int _brickCount = 0;
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning Journey",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
        brightness: Brightness.light,
      ),
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
              Text(
                "Brick laid: $_brickCount",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // SPACING BRICK: 16 pixels of height
              const SizedBox(height: 16), 
              const Text("Second element for the Column parent widget"),
              // SPACING BRICK: 24 pixels of height
              const SizedBox(height: 24),
              const Icon(Icons.check_circle, color: Colors.green, size: 48),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                      _brickCount++; // Increment the brick count when the button is pressed
                     });
                    print("current count increased: $_brickCount");
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent, // Set background color to blue accent
                      foregroundColor: Colors.white, // Set text color to white
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Add padding for better appearance
                    ),
                    child: Text("Increase Count"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: (){
                      if (_brickCount > 0) { // Ensure the count does not go negative}
                      setState(() {
                          _brickCount--; // Decrement the brick count when the button is pressed
                      });
                      }
                      print("Brick count decreased: $_brickCount");
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent, // Set background color to red accent
                      foregroundColor: Colors.white, // Set text color to white
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Add padding for better appearance
                    ),
                    child: Text("Decrease Count"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}