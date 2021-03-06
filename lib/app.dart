import 'package:flutter/material.dart';
import 'package:mono_kit/mono_kit.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';
import 'router.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildLightTheme(context),
      darkTheme: buildDarkTheme(),
//      themeMode: ThemeMode.dark,
      title: 'YouTube',
      home: HomePage.wrapped(),
      onGenerateRoute: Provider.of<Router>(context).onGenerateRoute,
      builder: (context, child) => TextScaleFactor(child: child),
    );
  }
}
