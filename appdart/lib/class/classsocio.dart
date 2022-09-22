import 'package:appdart/class/classendereco.dart';

abstract class Socio {
  String nome;
  String doc;
  Endereco enderecosocio;

  Socio(this.nome, this.doc, this.enderecosocio);
}

class Sociofisico extends Socio{
  
  Sociofisico(String nome, String doc, Endereco enderecosocio):super(nome, doc, enderecosocio);

  String cpf() {
    return "${doc.substring(0, 3)}.${doc.substring(3, 6)}.${doc.substring(6, 9)}-${doc.substring(9, 11)}";
  }

  @override
  String toString() {
  return "\nSócio:\nCPF: ${cpf()}\nNome Completo: $nome\n${enderecosocio.toString()}\n";
}
}
class Sociojuridico extends Socio{
  String razaoSociall;

  Sociojuridico(String nome, String doc, Endereco enderecosocio, this.razaoSociall):super(nome, doc, enderecosocio);

  String cnpj() {
    return ("${doc.substring(0, 2)}.${doc.substring(2, 5)}.${doc.substring(5, 8)}/${doc.substring(8, 12)}-${doc.substring(12, 14)}");
  }

  @override
  String toString() {
  return "\nSócio:\nCPF: ${cnpj()}\nRazão Social: $razaoSociall\nNome Fantasia: $nome\n${enderecosocio.toString()}\n";
  }
}