// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anotacao.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Anotacao on AnotacaoBase, Store {
  late final _$tituloAtom = Atom(name: 'AnotacaoBase.titulo', context: context);

  @override
  String get titulo {
    _$tituloAtom.reportRead();
    return super.titulo;
  }

  @override
  set titulo(String value) {
    _$tituloAtom.reportWrite(value, super.titulo, () {
      super.titulo = value;
    });
  }

  late final _$descricaoAtom =
      Atom(name: 'AnotacaoBase.descricao', context: context);

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  late final _$statusAtom = Atom(name: 'AnotacaoBase.status', context: context);

  @override
  String get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$AnotacaoBaseActionController =
      ActionController(name: 'AnotacaoBase', context: context);

  @override
  dynamic changeTitulo(String novoTitulo) {
    final _$actionInfo = _$AnotacaoBaseActionController.startAction(
        name: 'AnotacaoBase.changeTitulo');
    try {
      return super.changeTitulo(novoTitulo);
    } finally {
      _$AnotacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDescricao(String novaDescricao) {
    final _$actionInfo = _$AnotacaoBaseActionController.startAction(
        name: 'AnotacaoBase.changeDescricao');
    try {
      return super.changeDescricao(novaDescricao);
    } finally {
      _$AnotacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeStatus(String novoStatus) {
    final _$actionInfo = _$AnotacaoBaseActionController.startAction(
        name: 'AnotacaoBase.changeStatus');
    try {
      return super.changeStatus(novoStatus);
    } finally {
      _$AnotacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titulo: ${titulo},
descricao: ${descricao},
status: ${status}
    ''';
  }
}
