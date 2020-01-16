import 'package:fluterando_mobx/aula03/fullname_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FullNamePage extends StatelessWidget {
  final controller = FullNameController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fullname Mobx'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: controller.changeFirstName,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Last Name'),
                onChanged: controller.changeLastName,
              ),
              SizedBox(height: 20),
              Observer(builder: (_) {
                return Text(controller.fullName);
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
