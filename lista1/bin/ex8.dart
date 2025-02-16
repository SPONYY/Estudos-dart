import 'dart:io';

void main(){

  print("SALÁRIO DO MES COM BASE NAS HORAS TRABALHADAS NO MÊS");
  print("");

  print("Qual o valor de sua hora?");
  String? input1 = stdin.readLineSync();

  print("Quantas horas você trabalhou este mês?");
  String? input2 = stdin.readLineSync();

  int valorHora = int.tryParse(input1 ?? '') ?? 0;
  int horasTrabalhadas = int.tryParse(input2 ?? '') ?? 0;

  if (valorHora <= 0 || horasTrabalhadas <= 0) {
    
    print("Erro: O valor hora e horas trabalhadas devem ser positivos");
    
  } else {
    int salario = valorHora * horasTrabalhadas;
    print("Com base no seu valor hora e suas horas trabalhadas, seu salário sera = $salario reais");

  }



}