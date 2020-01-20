import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluterando_mobx/aula04/widgets/body_widget.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Mobx'),
      ),
      body: BodyWidget(),
    );
  }
}
