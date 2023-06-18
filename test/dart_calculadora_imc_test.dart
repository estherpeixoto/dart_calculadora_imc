import 'package:dart_calculadora_imc/models/pessoa.dart';
import 'package:dart_calculadora_imc/services/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  group('Calcular IMC', () {
    var valoresParaTestar = {
      {'nome': 'Pessoa 1', 'peso': 42, 'altura': 1.60}: 16.41,
      {'nome': 'Pessoa 2', 'peso': 50, 'altura': 1.60}: 19.53,
      {'nome': 'Pessoa 3', 'peso': 60, 'altura': 1.60}: 23.44,
      {'nome': 'Pessoa 4', 'peso': 70, 'altura': 1.60}: 27.34,
      {'nome': 'Pessoa 5', 'peso': 80, 'altura': 1.60}: 31.25,
      {'nome': 'Pessoa 6', 'peso': 90, 'altura': 1.60}: 35.16,
      {'nome': 'Pessoa 7', 'peso': 100, 'altura': 1.60}: 39.06,
    };

    valoresParaTestar.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        Pessoa pessoa = Pessoa(
            values['nome'].toString(),
            double.parse(values['peso'].toString()),
            double.parse(values['altura'].toString()));

        CalculadoraImc calculadora = CalculadoraImc();
        expect(calculadora.calcular(pessoa), expected);
      });
    });
  });
}
