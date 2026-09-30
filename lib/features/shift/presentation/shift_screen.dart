import 'package:flutter/material.dart';

class ShiftScreen extends StatelessWidget {
  const ShiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إغلاق الوردية'),
      ),
      body: const Center(
        child: Text(
          'شاشة إغلاق الوردية والتحكم في النقدية',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
