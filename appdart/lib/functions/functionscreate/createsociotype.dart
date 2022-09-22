import 'package:appdart/class/classendereco.dart';
import 'package:appdart/functions/functions.dart';
import 'package:appdart/functions/functionscreate/createende.dart';
import 'package:appdart/class/classsocio.dart';

Sociofisico criarsociofisico() {
  print("Informações do sócio: V");
  print("Pessoa física.");
  String nome = input("Nome completo: ");
  String doc = inputtelcpf("Cpf: ");
  Endereco enderecoo = criarendereco();
  
  Sociofisico auxxx = Sociofisico(nome, doc, enderecoo);

  return auxxx;
}

Sociojuridico criarsociojuridico() {
  print("Informações do sócio: V");
  print("Pessoa júridica.");
  String nome = input("Nome Fantasia: ");
  String razaosocial = input("Razão Social: ");
  String doc = inputint("Cnpj: ");
  Endereco enderecoo = criarendereco();

  Sociojuridico auxxx = Sociojuridico(nome, doc, enderecoo, razaosocial);

  return auxxx;
}