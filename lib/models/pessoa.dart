import 'package:dart_calculadora_imc/exceptions/altura_invalida_exception.dart';
import 'package:dart_calculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:dart_calculadora_imc/exceptions/peso_invalido_exception.dart';

class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    setNome(nome);
    setPeso(peso);
    setAltura(altura);
  }

  /// Setter for _nome
  void setNome(String nome) {
    if (nome.trim() == '') {
      throw NomeInvalidoException;
    }

    _nome = nome;
  }

  /// Getter for _nome
  String getNome() {
    return _nome;
  }

  /// Setter for _peso
  void setPeso(double peso) {
    if (peso <= 0.0) {
      throw PesoInvalidoException;
    }

    _peso = peso;
  }

  /// Getter for _peso
  double getPeso() {
    return _peso;
  }

  /// Setter for _altura
  void setAltura(double altura) {
    if (altura <= 0.0) {
      throw AlturaInvalidaException;
    }

    _altura = altura;
  }

  /// Getter for _altura
  double getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return {'Nome': _nome, 'Peso': _peso, 'Altura': _altura}.toString();
  }
}
