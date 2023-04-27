import 'package:flutter/material.dart';
import '../model/area_of_circle.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 1;
  double result = 1;

  late Circle circle;

  // creating a function to calculate the area of circle;
  void areaOfCircle() {
    circle = Circle();
    setState(() {
      result = circle.areaOfCircle(radius);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of circle'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter Radius',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    areaOfCircle();
                  },
                  child: const Text('Calculate'),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Area of circle is : $result',
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
