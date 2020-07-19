import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:teste_app/app/app_widget.dart';
import 'package:teste_app/app/modules/home/home_module.dart';
import 'pages/first_page/first_page_module.dart';
import 'pages/second_page/second_page_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/page1', module: FirstPageModule()),
        Router('/page2', module: SecondPageModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
