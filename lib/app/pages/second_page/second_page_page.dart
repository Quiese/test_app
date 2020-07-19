import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_app/app/shared/fake_repository.dart';
import 'second_page_controller.dart';

class SecondPagePage extends StatefulWidget {
  final String title;
  const SecondPagePage({Key key, this.title = "Page 2"}) : super(key: key);

  @override
  _SecondPagePageState createState() => _SecondPagePageState();
}

class _SecondPagePageState
    extends ModularState<SecondPagePage, SecondPageController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final _list = Modular.get<FakeRepository>().getAll();

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: _list.length,
          itemBuilder: (_, item) => Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('ID: ${_list[item].id}'),
                Text('${_list[item].name}'),
                Text('${_list[item].createAt.toUtc()}'),
              ],
            ),
          ),
          separatorBuilder: (_, __) => Divider(),
        ),
      ),
    );
  }
}
