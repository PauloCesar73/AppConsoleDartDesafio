import 'dart:io';

String input(String msg) {
  while (true) {
    String inputt;
    stdout.write(msg);
    inputt = stdin.readLineSync()!;
    if (int.tryParse(inputt) != null){
    print("Informe algo válido");
    continue;
    }else{
    return inputt;
    }
  }
}

String inputint(String msg) {
  while (true) {
    String inputt;
    stdout.write(msg);
    inputt = stdin.readLineSync()!;
    if (int.tryParse(inputt) != null){
    return inputt;
    }else{
    print("Informe algo válido");
    continue;
    }
  }
}

String inputdoc(String msg) {
  while (true) {
    String inputt;
    stdout.write(msg);
    inputt = stdin.readLineSync()!;
    if (inputt.length != 14){
    print("Informe algo válido");
    continue;
    }else{
    return inputt;
    }
  }
}

String inputtelcpf(String msg) {
  while (true) {
    String inputt;
    stdout.write(msg);
    inputt = stdin.readLineSync()!;
    if (inputt.length != 11){
    print("Informe algo válido");
    continue;
    }else{
    return inputt;
    }
  }
}

String inputcep(String msg) {
  while (true) {
    String inputt;
    stdout.write(msg);
    inputt = stdin.readLineSync()!;
    if (inputt.length != 8){
    print("Informe algo válido");
    continue;
    }else{
    return inputt;
    }
  }
}

int inputmenu(String msg) {
  int? value;

  while(true) {
    stdout.write(msg);
    String? option = stdin.readLineSync();
    if (option != null) {
      value = int.tryParse(option);
    }
    if(value != null){
      break;
    }else{
      print("Informe uma opção correta!");
    }
  }
  return value;
}