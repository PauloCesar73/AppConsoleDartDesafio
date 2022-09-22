import 'package:appdart/class/classsocio.dart';
import 'package:appdart/class/classendereco.dart';
import 'package:uuid/uuid.dart';

class Empresa {
  var id = Uuid().v4();
  String razaosocial;
  String nomefantasia;
  String cnpj;
  Endereco endereco;
  String telefone;
  var date = DateTime.now();
  Socio socio;

  Empresa({required this.razaosocial, required this.nomefantasia, required this.cnpj, required this.endereco, required this.telefone, required this.socio});

    String cnpjj() {
    return ("${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}");
  }

  @override
  String toString() {
    return "ID: $id\nCNPJ: ${cnpjj()} Data Cadastro: $date\nRazão Social: $razaosocial\nNome Fantasia: $nomefantasia\nTelefone: (${telefone.substring(0, 2)}) ${telefone.substring(2, 3)} ${telefone.substring(3, 7)}-${telefone.substring(7, 11)}\n${endereco.toString()}${socio.toString()}";
  }
}