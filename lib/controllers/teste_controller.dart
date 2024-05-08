
import 'package:tiede_builder_pkg/tiede_builder_pkg.dart';

class TesteController extends TiedeNotify {
  String test = '...';

  void alterar() async {
    test = 'Alterado ...';
    notify();

    await Future.delayed(Duration(seconds: 5));
    test = 'Alteração concluida!';
    notify();
  }
}