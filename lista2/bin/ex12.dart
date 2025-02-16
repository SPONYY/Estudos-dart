import 'dart:io';

void main(){

  print("/////////////////////////");
  print('''
  Faça um programa para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de Renda, que depende do salário bruto (conforme tabela abaixo) e 3% para o 
  Sindicato e que o FGTS corresponde a 11% do Salário Bruto, mas não é descontado (é a empresa que deposita). O Salário Líquido corresponde ao Salário Bruto menos os descontos. 
  O programa deverá pedir ao usuário o valor da sua hora e a quantidade de horas trabalhadas no mês.

  Desconto do IR:

  Salário Bruto até 900 (inclusive) - isento
  Salário Bruto até 1500 (inclusive) - desconto de 5%
  Salário Bruto até 2500 (inclusive) - desconto de 10%
  Salário Bruto acima de 2500 - desconto de 20% 
  
  Imprima na tela as informações, dispostas conforme o exemplo abaixo. 
  
  No exemplo o valor da hora é 5 e a quantidade de hora é 220.

          Salário Bruto: (5 * 220)        : R\$ 1100,00
          (-) IR (5%)                     : R\$   55,00  
          (-) INSS ( 10%)                 : R\$  110,00
          FGTS (11%)                      : R\$  121,00
          Total de descontos              : R\$  165,00
          Salário Liquido                 : R\$  935,00
  
  ''');
  print("/////////////////////////\n");

  double vlHora;
  double hrsTrabalhadas;
  double sindicato = 0.03;
  double fgts = 0.11;
  double inss = 0.1;
  double ir;


  do {

    stdout.write("Insira o valor de sua hora = ");
    String? input1 = stdin.readLineSync();

    print("");
    
    stdout.write("Insira as horas trabalhadas no mês = ");
    String? input2 = stdin.readLineSync();

    vlHora = double.tryParse(input1 ?? '') ?? 0.0;
    hrsTrabalhadas = double.tryParse(input2 ?? '') ?? 0.0;

    if (vlHora < 1 || hrsTrabalhadas < 1) {
      print("Valor inválido! O valor hora e as Horas trabalhadas devem ser positivas para que o cálculo seja possivel!");
    }


  } while (vlHora < 1 || hrsTrabalhadas < 1);

  double salarioBruto = vlHora * hrsTrabalhadas;  

  if (salarioBruto <= 900) {
    ir = 0;
  } else if(salarioBruto <= 1500){
    ir = 0.05;
  } else if(salarioBruto <= 2500){
    ir = 0.1;
  } else{
    ir = 0.2;
  }

  double vlFgts = salarioBruto * fgts;
  double vlSindicato = salarioBruto * sindicato;
  double vlInss = salarioBruto * inss;
  double vlIr = salarioBruto * ir;
  double vlDescontos = vlInss + vlIr + vlSindicato;
  double salarioLiquido = (salarioBruto + vlFgts) - vlDescontos;

  print(''' 
  

          Salário Bruto: ($vlHora * $hrsTrabalhadas) = R\$${salarioBruto.toStringAsFixed(2)}
          (-) IR (5%) = R\$${vlIr.toStringAsFixed(2)}
          (-) INSS ( 10%) = R\$${vlInss.toStringAsFixed(2)}
          FGTS (11%) = R\$${vlFgts.toStringAsFixed(2)}
          Total de descontos = R\$${vlDescontos.toStringAsFixed(2)}
          Salário Liquido = R\$${salarioLiquido.toStringAsFixed(2)}
  

  ''');
}