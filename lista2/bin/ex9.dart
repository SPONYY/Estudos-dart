import 'dart:io';

void main(){

  print("/////////////////////////");
  print("Faça um Programa que leia três números e mostre-os em ordem decrescente.");
  print("/////////////////////////\n");

  List<double> numeros = [];

  for(int i = 1; i <=3; i++){
    stdout.write("Forneça o $iº número = ");
    String? input = stdin.readLineSync();
    double numero = double.tryParse(input ?? '') ?? 0.0;
    numeros.add(numero);
  }

  List<double> crescente = List.from(numeros)..sort();
  List<double> decrescente = List.from(numeros)..sort((a, b) => b.compareTo(a));

  stdout.write("Números fornecidos = $numeros\n");
  stdout.write("Números fornecidos de forma crescente = $crescente\n");
  stdout.write("Números fornecidos de forme decrescente = $decrescente\n");


// Alternativa rápida para imprimir diretamente
// Se você não precisa manter a lista original, pode simplesmente fazer:
// numeros.sort(); 
// print("Crescente: $numeros");

// numeros.sort((a, b) => b.compareTo(a));
// print("Decrescente: $numeros");


}