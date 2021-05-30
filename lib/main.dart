import 'package:flutter/material.dart';
import 'package:flutter_ramble/selected_index_model.dart';
import 'package:flutter_ramble/themeForRamble.dart';
import 'package:provider/provider.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var theme = ThemeForRamble.light();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectedIndexModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: "Rable",
        home: Home(),
      ),
    );
  }
}
