import 'dart:io';

void main(){

  print("///////////////////////");
  print(''' 
  Faça um programa para uma loja de tintas. O programa deverá pedir o tamanho em metros quadrados da área a ser pintada. Considere que a cobertura da tinta é de 1 litro para 
  cada 3 metros quadrados e que a tinta é vendida em latas de 18 litros, que custam R\$ 80,00. Informe ao usuário a quantidades de latas de tinta a serem compradas e o preço total.
  ''');
  print("///////////////////////");
  print("");

  // Receber Metros quadrados da area a ser pintada
  // 1 Litro de Tinta para cada 3 Metros
  // 1 Lata de Tinta = 18L
  // Valor Lata = 80 Reais

  int litrosLata = 18;
  double valorLata = 80;
  double espacoPintar = -1;

  do {
    print("Quantos metros quadrados mede o espaço a ser pintado?");
    String? input1 = stdin.readLineSync();

    espacoPintar = double.tryParse(input1 ?? '') ?? 0.0;

    if (espacoPintar <= 0 ){
        print("Valor inválido! O espaço a ser pintado deve ser maior que 0");
    }
  } while (espacoPintar <= 0);

  double litrosNecessarios = espacoPintar / 3;

  // Cálculo do número de latas necessárias (arredondado para cima)
  int latasAComprar = (litrosNecessarios / litrosLata).ceil();

  double valorTotal = latasAComprar * valorLata;

  print("Para pintar ${espacoPintar.toStringAsFixed(2)}m², serão necessárias $latasAComprar latas de tinta, o que resultam em R\$${valorTotal.toStringAsFixed(2)}!!!");


}