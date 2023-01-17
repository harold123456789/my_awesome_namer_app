import 'package:flutter/material.dart';
import 'package:my_awesome_namer_app/pages/home_page.dart';
import 'package:my_awesome_namer_app/state_Manager/app_state.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Material APP',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 3, 243, 191)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}