import 'dart:io';

void main(){

  print("/////////////////////////");
  print("Faça um programa que pergunte o preço de três produtos e informe qual produto você deve comprar, sabendo que a decisão é sempre pelo mais barato.");
  print("/////////////////////////\n");

  List<double> produtosValores = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write("Forneça o valor do ${i}º produto = ");
    String? input1 = stdin.readLineSync();
    double produtoValor = double.tryParse(input1 ?? '') ?? 0.0;
    produtosValores.add(produtoValor);
  }

  double barato = produtosValores.reduce((a,b) => a < b ? a : b);
  int indiceMaisBarato = produtosValores.indexOf(barato) + 1; // +1 porque o índice começa em 0

  print("\n✅ O produto mais barato é o $indiceMaisBaratoº produto, com preço de R\$$barato.\n");

}