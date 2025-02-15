import 'dart:io';
import 'dart:math';

void main(){

  print("///////////////////////");
  print("PRODUTO DO DOBRO DO PRIMEIRO + METADE DO SEGUNDO, SOMA DO TRIPLO DO PRIMEIRO COM O TERCEIRO, TERCEIRO ELEVADO AO CUBO");
  print("///////////////////////");
  print("");

  print("Forneça um número inteiro:");
  String? input1 = stdin.readLineSync();

  print("Forneça outro número inteiro:");
  String? input2 = stdin.readLineSync();

  print("Agora forneça um número real:");
  String? input3 = stdin.readLineSync();

  double numInteiro1 = double.tryParse(input1 ?? '') ?? 0;
  int numInteiro2 = int.tryParse(input2 ?? '') ?? 0;
  double numReal = double.tryParse(input3 ?? '') ?? 0.0;

  double produtoDobroPrimeiroMetadeSegundo = (2*numInteiro1)+(numInteiro2/2);
  double somaTriploPrimeiroTerceiro = (3*numInteiro1) + numReal;
  double terceiroAoCubo = pow(numReal, 3).toDouble();

  print('''
  
  - O produto do dobro do primeiro número inteiro + A metade do segundo número inteiro é = ${produtoDobroPrimeiroMetadeSegundo.toStringAsFixed(0)}
  - A Soma do triplo do primeiro número inteiro com o terceiro real é = ${somaTriploPrimeiroTerceiro.toStringAsFixed(2)}
  - O terceiro número elevado ao cubo resulta em = ${terceiroAoCubo.toStringAsFixed(2)}
  
  ''');

}