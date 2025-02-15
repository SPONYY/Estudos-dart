import 'dart:io';

void main(){

  print("Digite um número:");
  String? input = stdin.readLineSync();

 // Converte a string para um número inteiro, se possível
  int numero = int.tryParse(input ?? '') ?? 0;

  print("O número fornecido foi ${numero}");

}