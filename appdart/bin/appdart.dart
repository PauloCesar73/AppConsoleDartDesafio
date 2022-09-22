import 'dart:io';
import 'package:appdart/class/classempresa.dart';
import 'package:appdart/functions/functionscreate/createemp.dart';
import 'package:appdart/functions/deleteid.dart';
import 'package:appdart/functions/functions.dart';
import 'package:appdart/functions/search.dart';

void main(List<String> args) {
  List<Empresa> listempresas = [];
  while (true) {
    print("==================Como posso ajudar?==================");
    print("1 - Cadastrar uma nova empresa.\n2 - Buscar Empresa cadastrada por CNPJ.\n3 - Buscar Empresa por CPF/CNPJ do Sócio.\n4 - Listar Empresas cadastradas em ordem alfabética.\n5 - Excluir uma empresa.\n6 - Sair.");
    print("==========Digite o número da opção desejada.==========");
    int opcaao = inputmenu("- ");
        if(opcaao == 1){
        listempresas = cadastrar(listempresas);
        }else if(opcaao == 2){
          search(listempresas);
          continue;
        }else if(opcaao == 3){
          searchdoc(listempresas);
          continue;
        }else if(opcaao == 4){
          listempresas.sort((a, b) => a.razaosocial .compareTo(b.razaosocial));
          listempresas.forEach(print);
          continue;
        }else if(opcaao == 5){
          deleteid(listempresas);
          continue;
        }else if(opcaao == 6){
          sleep(Duration(milliseconds:40));
          stdout.write("Encerrando");
          sleep(Duration(seconds:1));
          stdout.write(".");
          sleep(Duration(seconds:1));
          stdout.write(".");
          sleep(Duration(seconds:1));
          stdout.write(".");
          sleep(Duration(seconds:1));
          break;
        }else{
          sleep(Duration(seconds:1));
          stdout.write(".");
          sleep(Duration(seconds:1));
          stdout.write(".");
          sleep(Duration(seconds:1));
          stdout.write(".");
          sleep(Duration(seconds:1));
          print("Algo deu errado, tente novamente!");
          sleep(Duration(seconds:2));
          continue;
          }
    }
}