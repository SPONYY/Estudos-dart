import 'dart:io';

void main(){

print("Digite o primeiro número");
String? input1 = stdin.readLineSync();

print("Digite o segundo número");
String? input2 = stdin.readLineSync();

double numero1 = double.tryParse(input1 ?? '') ?? 0.0;

double numero2 = double.tryParse(input2 ?? '') ?? 0.0;

double soma = numero1 + numero2;

print("A soma dos números fornecidos é igual a ${soma}");


}