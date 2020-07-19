import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_app/app/pages/second_page/second_page_controller.dart';
import 'package:teste_app/app/pages/second_page/second_page_page.dart';

class SecondPageModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SecondPageController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => SecondPagePage()),
      ];

  static Inject get to => Inject<SecondPageModule>.of();
}
