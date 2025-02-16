import 'dart:io';

void main(){

  print("///////////////////////");
  print(''' 
  Faça um Programa que pergunte quanto você ganha por hora e o número de horas trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês, sabendo-se que 
  são descontados 11% para o Imposto de Renda, 8% para o INSS e 5% para o sindicato, faça um programa que nos dê:

  salário bruto.
  quanto pagou ao INSS.
  quanto pagou ao sindicato.
  o salário líquido.

  calcule os descontos e o salário líquido, conforme a tabela abaixo:

  + Salário Bruto : R\$
  - IR (11%) : R\$
  - INSS (8%) : R\$
  - Sindicato ( 5%) : R\$
  = Salário Liquido : R\$

  ''');
  print("///////////////////////");
  print("");

  double valorHora = -1;
  int horasTrabalhadas = 0;
  double ir = 0.11;
  double inss = 0.08;
  double sindicato = 0.05;
  

  do {

    print("Qual o valor de sua hora?");
    String? input1 = stdin.readLineSync();

    print("Quantas horas você trabalhou este mês?");
    String? input2 = stdin.readLineSync();

    valorHora = double.tryParse(input1 ?? '') ?? 0.0;
    horasTrabalhadas = int.tryParse(input2 ?? '') ?? 0;

    if (valorHora <= 0) {
      print("O valor hora deve ser positivo!");
    } else if (horasTrabalhadas <= 0) {
      print("O número de horas trabalhadas deve ser positivo!");
    }
    
  } while (valorHora <= 0 || horasTrabalhadas <= 0);

  double salarioBruto = valorHora * horasTrabalhadas;
  double irDesc = salarioBruto * ir;
  double inssDesc = salarioBruto * inss;
  double sindicatoDesc = salarioBruto * sindicato;
  double salarioLiquido = ((salarioBruto - irDesc) - inssDesc) - sindicatoDesc;

  print('''

    De acordo com seu valor hora (R\$${valorHora.toStringAsFixed(2)}) 
    e horas trabalhadas no mês ($horasTrabalhadas Horas), 
    seu salário líquido será de:
    
    + Salário Bruto : R\$${salarioBruto.toStringAsFixed(2)}
    - IR (11%) : R\$${irDesc.toStringAsFixed(2)}
    - INSS (8%) : R\$${inssDesc.toStringAsFixed(2)}
    - Sindicato ( 5%) : R\$${sindicatoDesc.toStringAsFixed(2)}
    = Salário Liquido : R\$${salarioLiquido.toStringAsFixed(2)}

    ''');


}