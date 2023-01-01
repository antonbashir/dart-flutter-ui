import 'package:flutter/material.dart';
import 'package:ui/widgets/theme/theme/dark.dart';
import 'package:ui/widgets/theme/theme/light.dart';

void main(List<String> args) => runApp(
      MaterialApp(
        theme: materialLightTheme,
        darkTheme: materialDarkTheme,
        home: Scaffold(
          body: Column(children: [Text("Hello")]),
        ),
      ),
    );
