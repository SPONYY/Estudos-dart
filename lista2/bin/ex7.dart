import 'dart:io';

void main() {
  print("/////////////////////////");
  print("Faça um Programa que leia três números e mostre o maior e o menor deles.");
  print("/////////////////////////\n");

  List<double> numeros = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write("Forneça o ${i}º número = ");
    String? input1 = stdin.readLineSync();
    double numero = double.tryParse(input1 ?? '') ?? 0.0;
    numeros.add(numero);
  }

  //Encontrando o maior número
  double maior = numeros.reduce((a,b) => a > b ? a: b);

  //Encontrando o menor número
  double menor = numeros.reduce((a,b) => a < b ? a : b);

  print("");
  stdout.write("Maior número entre os 3 = $maior\n");
  stdout.write("Menor número entre os 3 = $menor\n");
  print("");
}
