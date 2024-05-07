import 'package:mobx/mobx.dart';

part 'anotacao.g.dart';

class Anotacao = AnotacaoBase with _$Anotacao;

abstract class AnotacaoBase with Store {
  @observable
  String titulo = '';
  @action
  changeTitulo(String novoTitulo) => titulo = novoTitulo;

  @observable
  String descricao = '';
  @action
  changeDescricao(String novaDescricao) => descricao = novaDescricao;

  @observable
  String status = '';
  @action
  changeStatus(String novoStatus) => status = novoStatus;
}

class Anotacao2 {
  String titulo;
  String descricao;
  String status;

  Anotacao2({
    required this.titulo,
    required this.descricao,
    required this.status,
  });
}
