import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_test/views/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ColorScheme colorScheme =
      ColorScheme.fromSeed(seedColor: Colors.blueGrey);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          const Breakpoint(start: 0, end: 480, name: MOBILE),
          const Breakpoint(start: 481, end: 640, name: 'MOBILE_LARGE'),
          const Breakpoint(start: 641, end: 1080, name: TABLET),
          const Breakpoint(start: 1081, end: double.infinity, name: DESKTOP),
        ],
      ),
      title: 'Web test',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        textTheme: GoogleFonts.ralewayTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFf7f7f9),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page W'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1200),
            child: Home2(),
          ),
        ));
  }
}
