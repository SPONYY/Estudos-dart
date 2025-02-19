import 'dart:io';

void main() {
  //   Faça um programa que calcule as raízes de uma equação do segundo grau, na forma ax2 + bx + c.

  //   O programa deverá pedir os valores de a, b e c e fazer as consistências, informando ao usuário nas seguintes situações:

  // Se o usuário informar o valor de A igual a zero, a equação não é do segundo grau e o programa não deve fazer pedir os demais
  // valores, sendo encerrado;

  // Se o delta calculado for negativo, a equação não possui raizes reais. Informe ao usuário e encerre o programa;
  // Se o delta calculado for igual a zero a equação possui apenas uma raiz real; informe-a ao usuário;
  // Se o delta for positivo, a equação possui duas raiz reais; informe-as ao usuário;

  List<double> numeros = [];
  double valor = 0;

  do {
    stdout.write("Insira o 1º valor: ");
    String? input1 = stdin.readLineSync();
    valor = double.tryParse(input1 ?? '') ?? 0.0;
    numeros.add(valor);
    if (valor == 0) {
      print("Valor inválido!! O valor não pode ser igual a 0");
    }
  } while (valor == 0);

  for (int i = 2; i <= 3; i++) {
    stdout.write("Insira o $iº valor: ");
    String? input2 = stdin.readLineSync();
    double valor2e3 = double.tryParse(input2 ?? '') ?? 0.0;

    numeros.add(valor2e3);
  }

  print(numeros);
}
