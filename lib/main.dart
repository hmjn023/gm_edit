import 'package:flutter/material.dart' as flutter;

import 'package:markdown/markdown.dart' as md;
import 'package:flutter_markdown/flutter_markdown.dart' as flmk;

void main() {
  flutter.runApp(const MyApp());
}

class MyApp extends flutter.StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  flutter.Widget build(flutter.BuildContext context) {
    return flutter.MaterialApp(
      title: 'GM Edit',
      theme: flutter.ThemeData(
        primarySwatch: flutter.Colors.blue,
      ),
      home: const MyHomePage(title: 'GM Edit'),
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
  String mark = md.markdownToHtml('Hello *Markdown*');
  String mark2 = md.markdownToHtml("### this is header test");
  String mark3 = """
  # h1
  ## h2
  ### h3
  this is test\n
  1|2
  -|-
  a|b
  c|d\n
  表も行ける
  """;
  void save() {}

  @override
  flutter.Widget build(flutter.BuildContext context) {
    return flutter.Scaffold(
      appBar: flutter.AppBar(
        title: flutter.Text(widget.title),
      ),
      body: flutter.Row(children: [
        flutter.Expanded(flex: 1, child: flmk.Markdown(data: mark3)),
        flutter.Expanded(
            flex: 1,
            child: flutter.TextField(
                maxLines: null,
                onChanged: (text) => setState(() {
                      mark3 = text;
                    }),
                decoration: flutter.InputDecoration(hintText: '# Header')))
      ])
      /*flutter.Center(
        child: flutter.Column(
          mainAxisAlignment: flutter.MainAxisAlignment.center,
          children: <flutter.Widget>[
            flutter.Text(mark2),
            flmk.Markdown(
              data: mark3,
            ),
          ],
        ),
      )*/
      ,
      floatingActionButton: flutter.FloatingActionButton(
        onPressed: save,
        tooltip: 'save',
        child: const flutter.Icon(flutter.Icons.save),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
