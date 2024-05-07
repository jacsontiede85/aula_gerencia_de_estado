import 'package:mobx/mobx.dart';
import 'package:app_anotacoes/models/anotacao.dart';

part 'controllers.g.dart';

class GerenciaAnotacao = GerenciaAnotacoes with _$GerenciaAnotacao;

abstract class GerenciaAnotacoes with Store {
  var anotacao = Anotacao();
}
