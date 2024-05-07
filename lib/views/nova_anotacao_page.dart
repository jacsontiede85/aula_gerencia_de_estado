import 'package:app_anotacoes/controllers/listar_notas_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NovaAnotacaoPage extends StatefulWidget {
  final ListarNotasController controller;
  const NovaAnotacaoPage({super.key, required this.controller});

  @override
  State<NovaAnotacaoPage> createState() => _NovaAnotacaoPageState();
}

class _NovaAnotacaoPageState extends State<NovaAnotacaoPage> {
  String concluidoComSucesso = " ... ";

  @override
  Widget build(BuildContext context) {
    print('teste aqui');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Criar anotação",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 169, 149, 204),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Título',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.label_important_outline),
            ),
            onChanged: (value) {
              widget.controller.campoTitulo = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Descrição',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.label_important_outline),
            ),
            onChanged: (value) {
              widget.controller.campoDescricao = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Status',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.label_important_outline),
            ),
            onChanged: (value) {
              widget.controller.campoStatus = value;
            },
          ),
      
          Observer(
            builder: (_) =>
              Visibility(
                visible: widget.controller.carregando, 
                  child: Text(concluidoComSucesso),
                ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: ElevatedButton(
              onPressed: () async {
                concluidoComSucesso = "Anotação criada com sucesso!";
                widget.controller.carregando = true;
                await Future.delayed(const Duration(seconds: 2));

                
                widget.controller.adicionarNovasNotas();
                await Future.delayed(const Duration(seconds: 4));
                widget.controller.carregando = false;

                print('anotação criada');
                //Navigator.pop(context);
              },
              child: const Text('Salvar'),
            ),
          )
        ],
      ),
    );
  }
}
