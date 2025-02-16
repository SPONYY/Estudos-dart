import 'dart:io';

void main(){

  print("/////////////////////////");
  print(''' 
  
  Faça um Programa que leia três números e mostre o maior deles.

  ''');
  print("/////////////////////////");
  print("");

  print("Forneça o primeiro número:");
  String? input1 = stdin.readLineSync();

  print("Forneça o segundo número");
  String? input2 = stdin.readLineSync();

  print("Forneça o terceiro número:");
  String? input3 = stdin.readLineSync();

  double num1 = double.tryParse(input1 ?? '') ?? 0.0;
  double num2 = double.tryParse(input2 ?? '') ?? 0.0;
  double num3 = double.tryParse(input3 ?? '') ?? 0.0;

  if (num1 > num2 && num1 > num3) {
    print('''

    O primeiro número fornecido é o maior entre os 3 = 
    
    Maior = $num1

    1º = $num1
    2º = $num2
    3º = $num3

    ''');
  } else if(num2 > num1 && num2 > num3){
    
    print('''

    O segundo número fornecido é o maior entre os 3 = 
    
    Maior = $num2

    1º = $num1
    2º = $num2
    3º = $num3
    
    ''');

  }else{
    print('''

    O terceiro número fornecido é o maior entre os 3 = 
    
    Maior = $num3

    1º = $num1
    2º = $num2
    3º = $num3
    
    ''');
  }



}
