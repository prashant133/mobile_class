import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/siRoute');
              },
              child: const Text('Simple Interest'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addRoute');
              },
              child: const Text('Arithmetic'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/areaRoute');
              },
              child: const Text('Areaofcircle'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/changeName');
              },
              child: const Text('ChangeName'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/RichRoute');
              },
              child: const Text('RichText'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ColumnRoute');
              },
              child: const Text('Column'),
            ),
          ],
        ),
      ),
    );
  }
}