import 'package:flutter/material.dart';
import 'package:indi_moda/home_page.dart';
import 'package:indi_moda/mongo_query/mongo_query.dart';

void main() async {
  await connectToMongoDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 201, 228, 223),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(41, 108, 102, 1),
          primary: const Color.fromRGBO(41, 108, 102, 1),
        ),
        inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1)),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
