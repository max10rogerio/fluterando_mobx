import 'package:fluterando_mobx/aula04/client_controller.dart';
import 'package:flutter/material.dart';

import 'package:fluterando_mobx/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ClientController>(
          create: (_) => ClientController(),
          dispose: (_, controller) => controller.dispose(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
