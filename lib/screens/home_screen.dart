import 'package:flutter/material.dart';
import 'package:metatube/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MetaTube'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to MetaTube!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            _mainButton('New File', () {}),  
            Row(
              children: [
                _actionButton(() => null, Icons.file_upload),
                _actionButton(() => null, Icons.folder)
              ]
            )
            ],
            ),
        ],
      ),
    );
  }

  ElevatedButton _mainButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }

  IconButton _actionButton(Function()? onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: AppTheme.medium,
    );
  }
}
