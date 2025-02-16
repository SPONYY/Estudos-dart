import 'dart:io';

void main(){

print("CONVERSÃO DE METROS PARA CENTIMETROS");
print("");

print("Forneça os metros:");
String? input1 = stdin.readLineSync();

double metros = double.tryParse(input1 ?? '') ?? 0.0;

double centimetros = metros*100;

print("$metros metros representam $centimetros centimetros");

}