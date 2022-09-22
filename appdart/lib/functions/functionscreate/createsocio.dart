import 'package:appdart/functions/functionscreate/createsociotype.dart';
import 'package:appdart/class/classsocio.dart';
import 'dart:io';

Socio createsocio(){
Socio tipo;
  while(true){
    print("Informe o sócio.");
    print("1 - Física\n2 - Júridica");
    stdout.write("- ");
    String socioos = stdin.readLineSync()!;
      if (int.tryParse(socioos) != null) {
        int socioo = int.parse(socioos);
          if(socioo == 1){
            tipo = criarsociofisico();
            break;
          }else if(socioo == 2){
            tipo = criarsociojuridico();
            break;
          }else{
            print("Informe uma opção válida!");
            continue;
          }
        }else{
          print("Informe uma opção válida!");
          continue;
        }
        }
  return tipo;
}