import 'package:flutter/material.dart';
import 'package:renkseciciuygulamasi/pages/color_picker_page.dart';
import 'package:renkseciciuygulamasi/theme/app_theme.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: ColorPickerPage()
    );
  }
}

