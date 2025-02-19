import 'dart:collection';
import 'dart:io';

void main() {
  // Faça um Programa que peça os 3 lados de um triângulo. O programa deverá informar se os valores podem ser um triângulo.
  // Indique, caso os lados formem um triângulo, se o mesmo é: equilátero, isósceles ou escaleno.
  //
  // Dicas:

  // Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
  // Triângulo Equilátero: três lados iguais;
  // Triângulo Isósceles: quaisquer dois lados iguais;
  // Triângulo Escaleno: três lados diferentes;

  stdout.write("Insira o valor do primeiro lado do suposto triangulo: ");
  String? input1 = stdin.readLineSync();

  stdout.write("Insira o valor do segundo lado do suposto triangulo: ");
  String? input2 = stdin.readLineSync();

  stdout.write("Insira o valor do terceiro lado do suposto triangulo: ");
  String? input3 = stdin.readLineSync();

  double lado1 = double.tryParse(input1 ?? '') ?? 0.0;
  double lado2 = double.tryParse(input2 ?? '') ?? 0.0;
  double lado3 = double.tryParse(input3 ?? '') ?? 0.0;

  if (lado1 + lado2 > lado3 || lado2 + lado3 > lado1 || lado1 + lado3 > lado2) {
    print("A soma de 2 lados é maior do que a do 3º, temos um triangulo!");
  }

  if (lado1 == lado2 && lado1 == lado3) {
    print("Triangulo equilatero");
  } else if (lado2 == lado1 || lado2 == lado3 || lado3 == lado1) {
    print("Triangulo isóceles");
  } else if (lado1 != lado2 && lado1 != lado3 && lado2 != lado3) {
    print("Triangulo Escaleno");
  }
}
