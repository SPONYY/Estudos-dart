import 'dart:io';

void main() {
  // Faça um Programa que leia um número e exiba o dia correspondente da semana. (1-Domingo, 2- Segunda, etc.), se digitar
  // outro valor deve aparecer valor inválido.

  int numDia = 0;

  do {
    stdout.write(
      "Insira um número de 1 a 7 correspondente a um dia da semana: ",
    );
    String? input1 = stdin.readLineSync();

    numDia = int.tryParse(input1 ?? '') ?? 0;
    if (numDia < 1 || numDia > 7) {
      print("Valor inválido!! Insira um valor entre 1 e 7");
      continue;
    }
  } while (numDia < 1 || numDia > 7);

  DateTime data = DateTime(2024, 1, numDia);

  List<String> diasSemana = [
    "Segunda",
    "Terça",
    "Quarta",
    "Quinta",
    "Sexta",
    "Sabado",
    "Domingo",
  ];

  print(
    "O dia da semana correspondente ao dia inserido é = ${diasSemana[data.weekday - 1]}",
  );
}
