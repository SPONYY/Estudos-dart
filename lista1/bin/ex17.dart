import 'dart:io';

void main() {
  print("///////////////////////");
  print(''' 
  Faça um Programa para uma loja de tintas. O programa deverá pedir o tamanho em metros quadrados da área a ser pintada. 
  Considere que a cobertura da tinta é de 1 litro para cada 6 metros quadrados e que a tinta é 
  vendida em latas de 18 litros, que custam R\$ 80,00 ou em galões de 3,6 litros, que custam R\$ 25,00.
  Informe ao usuário as quantidades de tinta a serem compradas e os respectivos preços em 3 situações:

  comprar apenas latas de 18 litros;
  comprar apenas galões de 3,6 litros;
  misturar latas e galões, de forma que o desperdício de tinta seja menor. Acrescente 10% de folga e 
  sempre arredonde os valores para cima, isto é, considere latas cheias.
  ''');
  print("///////////////////////");
  print("");

  // Receber Metros quadrados da area a ser pintada
  // 1 Litro de Tinta para cada 3 Metros
  // 1 Lata de Tinta = 18L
  // Valor Lata = 80 Reais

  int litrosLata = 18;
  double litrosGalao = 3.6;
  double valorLata = 80;
  double valorGalao = 25;
  double espacoPintar = -1;

  do {
    print("Quantos metros quadrados mede o espaço a ser pintado?");
    String? input1 = stdin.readLineSync();

    espacoPintar = double.tryParse(input1 ?? '') ?? 0.0;

    if (espacoPintar <= 0) {
      print("Valor inválido! O espaço a ser pintado deve ser maior que 0");
    }
  } while (espacoPintar <= 0);

  double litrosNecessarios = espacoPintar / 6;

  // Considerando 10% de folga
  double litrosComFolga = litrosNecessarios * 1.1;

  int opcaoCompra = 0;

  print('''Selecione de que forma você gostaria de comprar a tinta:
  
  1 - Apenas Latas
  2 - Apenas Galões
  3 - Latas e Galões
  
  ''');
  String? input2 = stdin.readLineSync();
  int opcao = int.tryParse(input2 ?? '') ?? 0;

  do {
    switch (opcao) {
      case 1:
        print("OK! Apenas latas.");
        opcaoCompra = 1;
        break;
      case 2:
        print("OK! Apenas galões.");
        opcaoCompra = 2;
        break;
      case 3:
        print("OK! Latas e galões.");
        opcaoCompra = 3;
        break;
      default:
    }
  } while (opcaoCompra < 1 || opcaoCompra > 3);

  if (opcaoCompra == 1) {
    int latasAComprar = (litrosNecessarios / litrosLata).ceil();

    double valorTotal = latasAComprar * valorLata;

    print(
      "Para pintar ${espacoPintar.toStringAsFixed(2)}m², serão necessárias $latasAComprar latas de tinta, o que resultam em R\$${valorTotal.toStringAsFixed(2)}!!!",
    );
  } else if (opcaoCompra == 2) {
    int galoesAComprar = (litrosNecessarios / litrosGalao).ceil();

    double valorTotal = galoesAComprar * valorGalao;

    print(
      "Para pintar ${espacoPintar.toStringAsFixed(2)}m², serão necessárias $galoesAComprar galões de tinta, o que resultam em R\$${valorTotal.toStringAsFixed(2)}!!!",
    );
  } else if (opcaoCompra == 3) {
    int latasAComprar =
        (litrosComFolga / litrosLata).floor(); // Quantidade de latas
    double restanteLitros =
        litrosComFolga - (latasAComprar * litrosLata); // Quantos litros faltam

    // Calcular o número de galões necessários para o restante
    int galoesAComprar = (restanteLitros / litrosGalao).ceil();

    double valorTotal =
        (galoesAComprar * valorGalao) + (latasAComprar * valorLata);

    print(
      "Para pintar ${espacoPintar.toStringAsFixed(2)}m², serão necessárias $latasAComprar latas de tinta e $galoesAComprar galões de tinta, o que resulta em R\$${valorTotal.toStringAsFixed(2)}!!!",
    );
  }
}
