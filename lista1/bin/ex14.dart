import 'dart:io';

void main(){

  print("///////////////////////");
  print(''' 
  João Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar o rendimento diário de seu trabalho. Toda vez que ele traz um peso de peixes maior que o 
  estabelecido pelo regulamento de pesca do estado de São Paulo (50 quilos) deve pagar uma multa de R\$ 4,00 por quilo excedente. João precisa que você faça um programa que 
  leia a variável peso (peso de peixes) e calcule o excesso. Gravar na variável excesso a quantidade de quilos além do limite e na variável multa o valor da multa que João 
  deverá pagar. Imprima os dados do programa com as mensagens adequadas.
  ''');
  print("///////////////////////");
  print("");

// Multa por kg excedido  = 4 reais
// Devolver a quantidade de kg excedidos e o valor da multa

int pesoPeixeLimite = 50;
int multaPesoExcedido = 4;

print("Olá! Quantos Kg de peixe você trouxe?");
String? input1 = stdin.readLineSync();

double pesoPeixes = double.tryParse(input1 ?? '') ?? 0.0;

double excesso = pesoPeixes - pesoPeixeLimite;
double multa = excesso * multaPesoExcedido;

if (excesso > 0) {
  print("Com base nos Kg de peixe fornecidos, você pagará uma multa no total de = ${multa.toStringAsFixed(2)} Reais");
}else{
  print("O peso de peixes fornecido está dentro do limite do estado! Não havera multa.");
}

}






