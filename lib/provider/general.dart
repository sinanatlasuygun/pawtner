import 'package:flutter/material.dart';
import 'package:pawtner/theme/general.dart';
import 'package:provider/provider.dart';

class ProviderGeneral extends StatelessWidget {
  final Widget app;
  const ProviderGeneral({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeGeneral())],
      child: app,
    );
  }
}
