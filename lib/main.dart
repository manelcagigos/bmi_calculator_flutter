import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21), // Set the AppBar color here
        ),
        scaffoldBackgroundColor:
            const Color(0xFF0A0E21), // Set the background color here
        // textTheme: const TextTheme( // Edit any paramater for the text
        //   bodyMedium: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
      ),
      home: const InputPage(),
    );
  }
}
