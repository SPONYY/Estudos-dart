import 'dart:io';

void main(){

  print("/////////////////////////");
  print(''' 
  
  Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve calcular a média alcançada por aluno e apresentar:
  
  A mensagem "Aprovado", se a média alcançada for maior ou igual a sete;
  A mensagem "Reprovado", se a média for menor do que sete;
  A mensagem "Aprovado com Distinção", se a média for igual a dez.

  ''');
  print("/////////////////////////");
  print("");

  print("Forneça a primeira nota:");
  String? input1 = stdin.readLineSync();

  print("Forneça a segunda nota:");
  String? input2 = stdin.readLineSync();

  double nota1 = double.tryParse(input1 ?? '') ?? 0.0;
  double nota2 = double.tryParse(input2 ?? '') ?? 0.0;

  double media = (nota1 + nota2) / 2;

  if (media > 9) {
    print("Aprovado com Distinção - Nota final = ${media.toStringAsFixed(1)}");
  } else if(media >= 7){
    print("Aprovado - Nota final = ${media.toStringAsFixed(1)}");
  } else{
    print("Reprovado - Nota final = ${media.toStringAsFixed(1)}");
  }

}