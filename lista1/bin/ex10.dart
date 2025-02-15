import 'dart:io';

void main(){

  print("///////////////////////");
  print("DE GRAUS CELCIUS PARA GRAUS FAHRENHEIT");
  print("///////////////////////");
  print("");

  print("Foneça a temperatura em graus celcius:");
  String? input1 = stdin.readLineSync();

  double celcius = double.tryParse(input1 ?? '') ?? 0.0;

  double fahrenheit = (celcius *9/5) + 32;

  print("Com base na temperatura em graus celcius fornecida, estão ${fahrenheit}ºF");

}