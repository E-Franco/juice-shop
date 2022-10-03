import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:juice_shop/core/constants/constants.dart';
import 'package:juice_shop/ui/pages/home_page.dart';
import 'package:juice_shop/ui/pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
