import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/router/router.dart';

void main() => runApp(AppState()); // Se usa AppState en lugar de MyApp

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
