import 'package:appdart/class/classempresa.dart';
import 'dart:io';

void deleteid(List<Empresa> s){
  stdout.write("Id da empresa que deseja excluir: ");
  String cnpjaux = stdin.readLineSync()!;

  bool aux = false;
  for (var i = 0; i < s.length; i++) {
    if (cnpjaux == s[i].id) {
      s.remove(s[i]);
      aux = true;
      i = s.length;
    }
  }
  if (!aux) {
    print("Não encontrado");
  }
}
