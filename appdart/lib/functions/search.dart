import 'package:appdart/class/classempresa.dart';
import 'dart:io';

void search(List<Empresa> s){
  stdout.write("Informe o Cnpj da empresa: ");
  String cnpjaux = stdin.readLineSync()!;

  bool aux = false;

  for (var i = 0; i < s.length; i++) {
    if (cnpjaux == s[i].cnpj) {
      print(s[i]);
      aux = true;
      i = s.length;
    }
  }
  if (!aux) {
    print("Não encontrado");
    sleep(Duration(seconds: 1));
  }
}

void searchdoc(List<Empresa> s){
  stdout.write("Informe Cpf/Cnpj do sócio: ");
  String cnpjaux = stdin.readLineSync()!;

  bool aux = false;

  for (var i = 0; i < s.length; i++) {
    if (cnpjaux == s[i].socio.doc) {
      print(s[i]);
      aux = true;
      i = s.length;
    }
  }
  if (!aux) {
    print("Não encontrado");
    sleep(Duration(seconds: 1));
  }
}