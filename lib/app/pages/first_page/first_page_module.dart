import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_app/app/pages/first_page/first_page_controller.dart';
import 'package:teste_app/app/pages/first_page/first_page_page.dart';
import 'package:teste_app/app/shared/fake_repository.dart';

class FirstPageModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FirstPageController()),
        Bind((i) => FakeRepository()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => FirstPagePage()),
      ];

  static Inject get to => Inject<FirstPageModule>.of();
}
