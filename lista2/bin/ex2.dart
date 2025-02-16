import 'dart:io';
void main(){

    print("/////////////////////////");
    print("Faça um Programa que peça um valor e mostre na tela se o valor é positivo ou negativo.");
    print("/////////////////////////");
    print("");

    print("Forneça o número que sera avaliado:");
    String? input1 = stdin.readLineSync();

    double numero = double.tryParse(input1 ?? '') ?? 0.0;

    if (numero > 0) {
      print("O número fornecido é Positivo = ${numero.toStringAsFixed(1)}");
    } else if(numero < 0){
      print("O número fornecido é Negativo = ${numero.toStringAsFixed(1)}");
    } else {
      print("O número fornecido é Neutro = $numero");
    } 
  
    

}
