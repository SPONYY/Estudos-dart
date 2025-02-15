import 'dart:io';
import 'dart:math';

void main(){

print("CALCULAS A AREA DE UM CIRCULO");
print("");

print("Forneça o raio do circulo:");
String? input1 = stdin.readLineSync();

double raio = double.tryParse(input1 ?? '') ?? 0.0;

if (raio > 0){
  double area = pi * pow(raio, 2);
  print("A area do circulo é = ${area.toStringAsFixed(2)}");
}else{
  print("Valor inválido! O raio deve ser um numero positivo");
}

}