import 'dart:io';

void main(){

print("MÉDIA DE 4 NOTAS");
print("");

print("Digite a primeira nota:");
String? input1 = stdin.readLineSync();

print("Digite a segunda nota:");
String? input2 = stdin.readLineSync();

print("Digite a terceira nota:");
String? input3 = stdin.readLineSync();

print("Digite a ultima nota");
String? input4 = stdin.readLineSync();

double nota1 = double.tryParse(input1 ?? '') ?? 0.0;
double nota2 = double.tryParse(input2 ?? '') ?? 0.0;
double nota3 = double.tryParse(input3 ?? '') ?? 0.0;
double nota4 = double.tryParse(input4 ?? '') ?? 0.0;

double media = (nota1 + nota2 + nota3 + nota4)/4;

print("A média entre as quatro notas resulta em = $media");



}