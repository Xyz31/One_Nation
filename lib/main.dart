import 'package:flutter/material.dart';
import 'package:one_nation/Desktop/home_dekstop.dart';
import 'package:one_nation/Widgets/app_bar.dart';

import 'Mobile/home_mobile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Raleway'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              //backgroundColor: Colors.white.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              title: const Text(
                'Author',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3,
                ),
              ))
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: DesktopAppbar()),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return Mobile();
        } else {
          return Desktop();
        }
      }),
    );
  }
}
