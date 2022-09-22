import 'package:appdart/class/classendereco.dart';
import 'package:appdart/class/classsocio.dart';
import 'package:appdart/functions/functions.dart';
import 'package:appdart/class/classempresa.dart';
import 'package:appdart/functions/functionscreate/createende.dart';
import 'package:appdart/functions/functionscreate/createsocio.dart';

List<Empresa> cadastrar(List<Empresa> i){
  List<Empresa> aux = i;
    print("Dados da empresa.");
    String cnpj = inputdoc("Informe o CNPJ: ");
    String razaosocial = input("Informe a Razão Social: ");
    String nomefantasia = input("Informe o Nome fantasia: ");
    String telefone = inputtelcpf("Informe o Telefone: ");
    Endereco end = criarendereco();
    Socio soc = createsocio();

    Empresa emp = Empresa(razaosocial: razaosocial, nomefantasia: nomefantasia, cnpj: cnpj, endereco: end, telefone: telefone, socio: soc);

    aux.add(emp);
    return aux;
}