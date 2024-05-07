//import 'package:app_anotacoes/controllers/controllers.dart';
import 'package:app_anotacoes/controllers/listar_notas_controller.dart';
import 'package:app_anotacoes/models/anotacao.dart';
import 'package:app_anotacoes/repositorio/anotacao_repositorio.dart';
import 'package:app_anotacoes/views/anotacao_detalhes_page.dart';
import 'package:app_anotacoes/views/nova_anotacao_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabela = AnotacaoRepositorio.tabela;

  mostrarDetalhes(Anotacao2 anotacao) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AnotacaoDetalhesPage(anotacao: anotacao),
      ),
    );
  }

  adicionarAnotacao(Anotacao2 anotacao) {
    setState(() {
      tabela.add(anotacao);
    });
  }

  final ListarNotasController controllerLista = ListarNotasController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Anotações',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 169, 149, 204),
      ),
      body: ListView.builder(
        itemCount: controllerLista.listarNotas.length,
        itemBuilder: (BuildContext context, index) {
          Map<String, dynamic> notas = controllerLista.listarNotas[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.assignment),
              title: Text(
                notas['titulo'],
                //tabela[anotacao].titulo,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(notas['status']),
              //Text("Status: ${tabela[anotacao].status}"),
              trailing: IconButton(
                //onPressed: () => mostrarDetalhes(tabela[anotacao]),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (_) =>
                  //           AnotacaoDetalhesPage(),
                  //     ));
                },
                icon: const Icon(Icons.navigate_next),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NovaAnotacaoPage(controller: controllerLista),
              )).then((value) => setState(() {
                print('tudo ok');
              }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
