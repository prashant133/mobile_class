import 'package:flutter/material.dart';

import '../model/area_of_circle.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  final radiusController = TextEditingController();
  double result = 1;

  late Circle circle;

  @override
  void initState() {
    // TODO: implement initState
    radiusController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    radiusController.dispose();
    super.dispose();
  }

  // creating a function to calculate the area of circle;
  void areaOfCircle() {
    circle = Circle();
    setState(() {
      result = circle.areaOfCircle(double.parse((radiusController.text)));
    });
  }

  final circleKey = GlobalKey<FormState>();

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
          child: Form(
            key: circleKey,
            child: Column(
              children: [
                TextFormField(
                    controller: radiusController,
                    decoration: InputDecoration(
                      hintText: 'Enter Radius',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter the radius';
                      }
                      return null;
                    }),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (circleKey.currentState!.validate()) {
                        areaOfCircle();
                      }
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
      ),
    );
  }
}
