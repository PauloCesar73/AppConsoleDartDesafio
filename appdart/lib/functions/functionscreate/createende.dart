import 'package:appdart/class/classendereco.dart';
import 'package:appdart/functions/functions.dart';

Endereco criarendereco() {
  print("Informe o endereço");
  String logradouro = input("Logradouro: ");
  String numero = inputint("Número: ");
  String bairro = input("Bairro: ");
  String estado = input("Estado: ");
  String cep = inputcep("Cep: ");
  String complemento = input("Complemento: ");

  Endereco auxx = Endereco(logradouro, numero, complemento, bairro, estado, cep);

  return auxx;
}
