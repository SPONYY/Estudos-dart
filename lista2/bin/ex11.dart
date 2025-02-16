import 'dart:io';

void main(){

  // As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores e lhe contrataram para desenvolver o programa que calculará os reajustes.
  // Faça um programa que recebe o salário de um colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:

  // salários até R\$ 280,00 (incluindo) : aumento de 20%
  // salários entre R\$ 280,00 e R\$ 700,00 : aumento de 15%
  // salários entre R\$ 700,00 e R\$ 1500,00 : aumento de 10%
  // salários de R\$ 1500,00 em diante : aumento de 5% 
  
  // Após o aumento ser realizado, informe na tela:

  // o salário antes do reajuste;
  // o percentual de aumento aplicado;
  // o valor do aumento;
  // o novo salário, após o aumento.

  stdout.write("Digite seu salário = ");
  String? input1 = stdin.readLineSync();
  double salario = double.tryParse(input1 ?? '') ?? 0.0;

  // switch (salario) {
  //   case <= 280:
  //     double novoSalario = salario * 1.2;
  //     double vlReajuste = novoSalario - salario;

  //     print("");
  //     print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
  //     print("Aumento aplicado = 20%");
  //     print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
  //     print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");
      
  //     break;

  //   case > 280 && < 700:
  //     double novoSalario = salario * 1.15;
  //     double vlReajuste = novoSalario - salario;

  //     print("");
  //     print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
  //     print("Aumento aplicado = 15%");
  //     print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
  //     print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");
      
  //     break;
  //   case > 700 && < 1500:
  //     double novoSalario = salario * 1.1;
  //     double vlReajuste = novoSalario - salario;

  //     print("");
  //     print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
  //     print("Aumento aplicado = 10%");
  //     print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
  //     print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");
      
  //     break;
  //   case >= 1500:
  //     double novoSalario = salario * 1.05;
  //     double vlReajuste = novoSalario - salario;

  //     print("");
  //     print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
  //     print("Aumento aplicado = 5%");
  //     print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
  //     print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");
      
  //     break;
  // }

  if (salario <= 280) {
      
      double novoSalario = salario * 1.2;
      double vlReajuste = novoSalario - salario;

      print("");
      print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
      print("Aumento aplicado = 20%");
      print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
      print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");

  } else if(salario > 280 && salario < 700){

      double novoSalario = salario * 1.15;
      double vlReajuste = novoSalario - salario;

      print("");
      print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
      print("Aumento aplicado = 15%");
      print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
      print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");
  
  } else if(salario > 700 && salario < 1500){

      double novoSalario = salario * 1.1;
      double vlReajuste = novoSalario - salario;

      print("");
      print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
      print("Aumento aplicado = 10%");
      print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
      print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");

  } else{
      double novoSalario = salario * 1.05;
      double vlReajuste = novoSalario - salario;

      print("");
      print("Salário antes do Reajuste = R\$${salario.toStringAsFixed(2)}");
      print("Aumento aplicado = 5%");
      print("Valor do aumento = R\$${vlReajuste.toStringAsFixed(2)}");
      print("Novo Salário = ${novoSalario.toStringAsFixed(2)}\n");
  }
  
}