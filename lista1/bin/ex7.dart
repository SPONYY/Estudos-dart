import 'dart:io';
import 'dart:math';

void main(){

  print("CALCULAR A AREA DO QUADRADO E DOBRAR");
  print("");

  print("Forneça o comprimento de um dos lados do quadrado");
  String? input1 = stdin.readLineSync();

  double comprimento = double.tryParse(input1 ?? '') ?? 0.0;
  
  if (comprimento > 0) {
    double area = pow(comprimento, 2).toDouble();
    double areaDobrada = area * 2;

    print("Com base no comprimento de um dos lados fornecido, a area do quadrado dobrada é igual a = ${areaDobrada.toStringAsFixed(2)}");

  }else{
    print("Valor inválido! O comprimento deve ser um número positivo!");
  }

  
}