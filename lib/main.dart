import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/core/utils/util.dart';
import 'package:resume/core_ui/theme/theme.dart';
import 'package:resume/core_ui/theme/theme_notifier.dart';
import 'package:resume/features/home/ui/home.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeNotifier(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Inter", "Roboto Mono");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeNotifier>(context).theme == ThemeData.dark()
          ? theme.light()
          : theme.dark(),
      home: const HomePage(),
    );
  }
}
