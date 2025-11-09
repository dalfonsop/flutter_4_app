import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScrenn extends StatefulWidget {
  const AnimatedScrenn({super.key});

  static const name = 'animated_screen';

  @override
  State<AnimatedScrenn> createState() => _AnimatedScrennState();
}

class _AnimatedScrennState extends State<AnimatedScrenn> {

  double width = 50;
  double height = 50;

  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape(){
    final random = Random();
    width = random.nextInt(300) +50;
    height = random.nextInt(300) +50;
    borderRadius = random.nextInt(100)+10.0;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1
    );
    setState(() {
      
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated container')),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
