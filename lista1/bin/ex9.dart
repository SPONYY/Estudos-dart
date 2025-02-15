import 'dart:io';

void main(){

  print("///////////////////////");
  print("DE GRAUS FAHRENHEIT PARA GRAUS CELCIUS");
  print("///////////////////////");
  print("");

  print("Forneça a temperatura em graus fahrenheit:");
  String? input1 = stdin.readLineSync();

  double fahrenheit = double.tryParse(input1 ?? '') ?? 0.0;

  double celcius = 5 * ((fahrenheit-32)/9);

  print("Com base na temperatura em graus fahrenheit fornecida, estão ${celcius.toStringAsFixed(2)}ºC");

}