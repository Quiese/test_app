import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_app/app/shared/fake_repository.dart';
import 'first_page_controller.dart';

class FirstPagePage extends StatefulWidget {
  final String title;
  const FirstPagePage({Key key, this.title = "Page 1"}) : super(key: key);

  @override
  _FirstPagePageState createState() => _FirstPagePageState();
}

class _FirstPagePageState
    extends ModularState<FirstPagePage, FirstPageController> {
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
