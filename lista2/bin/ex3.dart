import 'dart:io';

void main(){

  print("/////////////////////////");
  print("Faça um Programa que verifique se uma letra digitada é 'F' ou 'M'. Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido.");
  print("/////////////////////////");
  print("");


  int sexo = 3;

  do {

    print("Qual seu sexo? (M - Masculino / F - Feminino)");
    String? input1 = stdin.readLineSync();

    switch (input1) {
    case "M":
    case "m":
      print("Masculino");
      sexo = 1;
      break;
    case "F":
    case "f":
      print("Feminino");
      sexo = 2;
      break;
    default:
      print("");
      print("Valor inválido! Por favor utilize somente as letras M e F (M - Masculino / F - Feminino)");
      print("");
      sexo = 3;
      continue;
  }
  } while (sexo != 1 && sexo != 2);

}