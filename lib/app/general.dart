import 'package:flutter/material.dart';
import 'package:pawtner/router/general.dart';
import 'package:pawtner/theme/general.dart';
import 'package:provider/provider.dart';

class AppGeneral extends StatefulWidget {
  const AppGeneral({super.key});

  @override
  State<AppGeneral> createState() => _AppGeneralState();
}

class _AppGeneralState extends State<AppGeneral> {
  final RouterGeneral _router = RouterGeneral();
  @override
  Widget build(BuildContext context) {
    final ThemeGeneral theme = Provider.of<ThemeGeneral>(context);
    return MaterialApp(
      title: 'Pawtner',
      routes: _router.map,
      initialRoute: _router.initialRoute,
      onUnknownRoute: _router.unknownPage,
      themeMode: theme.thememode,
      darkTheme: theme.darkthemedata,
      theme: theme.lightthemedata,
    );
  }
}
