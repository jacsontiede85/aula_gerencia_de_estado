import 'package:app_anotacoes/models/anotacao.dart';

class AnotacaoRepositorio {
  static List<Anotacao2> tabela = [
    Anotacao2(
        titulo: 'Arrumar o quarto',
        descricao: 'Tirar poeira, arrumar a cama, abrir a janela.',
        status: 'Pendente'),
    Anotacao2(
        titulo: 'Preparar o café da manhã',
        descricao: 'Fazer o café, esquentar o leite, contar as frutas.',
        status: 'Finalizado'),
    Anotacao2(
        titulo: 'Ir ao supermercado',
        descricao: 'Comprar: Leite, queijo, café.',
        status: 'Andamento'),
    Anotacao2(
        titulo: 'Ir ao centro',
        descricao: 'Comprar copo térmico, pijama.',
        status: 'Pendente'),
    Anotacao2(
        titulo: 'Exercício',
        descricao:
            'Fazer 10 minutos de alongamento inicial, 20 minutos de bicicleta, 20 minutos de elíptico, 10 de alongamento final.',
        status: 'Pendente'),
  ];
}
