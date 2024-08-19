import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am rich',
      home: DiamondPage(),
    );
  }
}

class DiamondPage extends StatefulWidget {
  @override
  _DiamondPageState createState() => _DiamondPageState();
}

class _DiamondPageState extends State<DiamondPage> {
  bool _isDiamondVisible = false;
  bool _isButtonVisible = true;

  void _toggleDiamondVisibility() {
    setState(() {
      _isDiamondVisible = true;
      _isButtonVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isDiamondVisible) Image.asset('assets/diamond.png'),
            SizedBox(height: 30),
            ElevatedButton(onPressed: _toggleDiamondVisibility, 
                child: Text('Show diamond'))
          ],
        ),
      )
    );
  }

  
}