import 'package:app_anotacoes/models/anotacao.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnotacaoDetalhesPage extends StatefulWidget {
  Anotacao2 anotacao;

  AnotacaoDetalhesPage({super.key, required this.anotacao});

  @override
  State<AnotacaoDetalhesPage> createState() => _AnotacaoDetalhesPageState();
}

class _AnotacaoDetalhesPageState extends State<AnotacaoDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.anotacao.titulo,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 169, 149, 204),
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Descrição:",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Wrap(
                //mainAxisAlignment: MainAxisAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(widget.anotacao.descricao),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Status:",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.anotacao.status),
                ],
              ),
            ),
          ],
        ));
  }
}
