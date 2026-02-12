import 'package:flutter/material.dart';

void main(){
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
          actions: [const Icon(Icons.search),
          const Icon(Icons.notifications)],      
        ),
        body: const Center(
          child: Text("Hello, Flutter!"),
        )
      )


    );
    
  }
}