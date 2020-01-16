import 'package:fluterando_mobx/aula01/counter_page.dart';
import 'package:fluterando_mobx/aula03/fullname_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Widget _renderButton<T>(String text, BuildContext ctx, T page) {
  //   return RaisedButton(
  //     color: Colors.blue,
  //     textColor: Colors.white,
  //     onPressed: () {
  //       Navigator.of(ctx).push(MaterialPageRoute(builder: (context) => page()));
  //     },
  //     child: Text('Counter'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluterando Mobx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CounterPage()));
              },
              child: Text('Counter'),
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FullNamePage()));
              },
              child: Text('Full Name Form'),
            ),
          ],
        ),
      ),
    );
  }
}
