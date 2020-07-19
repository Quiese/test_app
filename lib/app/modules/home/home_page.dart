import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final Color _buttonColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: _buttonColor,
              child: Text('Navigate to Page 1'),
              onPressed: () => Modular.to.pushNamed('page1'),
            ),
            SizedBox(height: 10),
            MaterialButton(
              color: _buttonColor,
              child: Text('Navigate to Page 2'),
              onPressed: () => Modular.to.pushNamed('page2'),
            ),
          ],
        ),
      ),
    );
  }
}
