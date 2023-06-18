import 'package:dart_calculadora_imc/models/pessoa.dart';
import 'package:dart_calculadora_imc/services/calculadora_imc.dart';
import 'package:dart_calculadora_imc/utils/console_utils.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  String nome = ConsoleUtils.lerString(mensagem: 'Nome:');
  double peso = ConsoleUtils.lerDouble(mensagem: 'Peso (kg):');
  double altura = ConsoleUtils.lerDouble(mensagem: 'Altura (metros):');
  Pessoa pessoa = Pessoa(nome, peso, altura);

  CalculadoraImc calculadora = CalculadoraImc();
  calculadora.calcular(pessoa);
}
