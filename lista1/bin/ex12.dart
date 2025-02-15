import 'dart:io';

void main(){

  print("///////////////////////");
  print("CALCULANDO O PESO IDEAL COM BASE NA ALTURA DE UMA PESSOA");
  print("///////////////////////");
  print("");

  print("Forneça a sua altura:");
  String? input1 = stdin.readLineSync();

  double altura = double.tryParse(input1 ?? '') ?? 0.0;

  if (altura > 0) {
    
    double pesoIdeal = (72.7*altura) - 58;
    print("Com base em sua altura, seu peso ideal seria de ${pesoIdeal.toStringAsFixed(2)}Kg");
  }else{
    print("Valor Inválido!! A altura fornecida deve ser um número positivo");
  }

}