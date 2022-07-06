import 'package:flutter/material.dart' as flutter;

import 'package:markdown/markdown.dart' as md;

void main() {
  flutter.runApp(const MyApp());
}

class MyApp extends flutter.StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  flutter.Widget build(flutter.BuildContext context) {
    return flutter.MaterialApp(
      title: 'Flutter Demo',
      theme: flutter.ThemeData(
        primarySwatch: flutter.Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends flutter.StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  flutter.State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends flutter.State<MyHomePage> {
  int _counter = 0;
  String mark=md.markdownToHtml('Hello *Markdown*');
  String mark2=md.markdownToHtml("### this is header test");
  //String mark = "aaaa";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  flutter.Widget build(flutter.BuildContext context) {
    return flutter.Scaffold(
      appBar: flutter.AppBar(
        title: flutter.Text(widget.title),
      ),
      body: flutter.Center(
        child: flutter.Column(
          mainAxisAlignment: flutter.MainAxisAlignment.center,
          children: <flutter.Widget>[
            flutter.Text(
              //'You have pushed the button this many times:',
              mark2,
            ),
            flutter.Text(
              '$_counter',
              style: flutter.Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: flutter.FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const flutter.Icon(flutter.Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
