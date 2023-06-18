import 'package:dart_calculadora_imc/models/pessoa.dart';

class CalculadoraImc {
  double calcular(Pessoa pessoa) {
    double imc = pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
    return double.parse(imc.toStringAsFixed(2));
  }

  void resultado(Pessoa pessoa) {
    double imc = calcular(pessoa);

    if (imc < 16) {
      print('Magreza grave');
    } else if (imc < 17) {
      print('Magreza moderada');
    } else if (imc < 18.5) {
      print('Magreza leve');
    } else if (imc < 25) {
      print('Saudável');
    } else if (imc < 30) {
      print('Sobrepeso');
    } else if (imc < 35) {
      print('Obesidade Grau I');
    } else if (imc < 40) {
      print('Obesidade Grau II (severa)');
    } else {
      print('Obesidade Grau III (mórbida)');
    }
  }
}
