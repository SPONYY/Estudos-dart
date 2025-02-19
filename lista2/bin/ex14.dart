import 'dart:io';

void main() {
  print(''' 
  
  Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina ao longo de um semestre, e calcule a 
  sua média. A atribuição de conceitos obedece à tabela abaixo:
  
  Média de Aproveitamento  Conceito
  
  Entre 9.0 e 10.0        A
  Entre 7.5 e 9.0         B
  Entre 6.0 e 7.5         C
  Entre 4.0 e 6.0         D
  Entre 4.0 e zero        E

O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem “APROVADO” se o conceito 
for A, B ou C ou “REPROVADO” se o conceito for D ou E.
  ''');

  stdout.write("Forneça o valor da primeira nota: ");
  String? input1 = stdin.readLineSync();

  stdout.write("Forneça o valor da segunda nota: ");
  String? input2 = stdin.readLineSync();

  double nota1 = double.tryParse(input1 ?? '') ?? 0.0;
  double nota2 = double.tryParse(input2 ?? '') ?? 0.0;

  double media = (nota1 + nota2) / 2;

  if (media >= 9 && media <= 10) {
    print(''' 
    
      Média Final = ${media.toStringAsFixed(2)}
      Nota = A
      Aprovado

    ''');
  } else if (media >= 7.5 && media < 9) {
    print(''' 
    
      Média Final = ${media.toStringAsFixed(2)}
      Nota = B
      Aprovado

    ''');
  } else if (media >= 6 && media < 7.5) {
    print(''' 
    
      Média Final = ${media.toStringAsFixed(2)}
      Nota = C
      Aprovado

    ''');
  } else if (media >= 4 && media < 6) {
    print(''' 
    
      Média Final = ${media.toStringAsFixed(2)}
      Nota = D
      Reprovado

    ''');
  } else if (media >= 0 && media < 4) {
    print(''' 
    
      Média Final = ${media.toStringAsFixed(2)}
      Nota = E
      Reprovado

    ''');
  }
}
