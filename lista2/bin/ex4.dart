import 'dart:io';

void main(){

  print("/////////////////////////");
  print("Faça um Programa que verifique se uma letra digitada é vogal ou consoante.");
  print("/////////////////////////");
  print("");

  List<String> vogais = ["A","a","E","e","I","O","o","U","u"];
  List<String> consoantes= [
  "B", "b", "C", "c", "D", "d", "F", "f", "G", "g", 
  "H", "h", "J", "j", "K", "k", "L", "l", "M", "m", 
  "N", "n", "P", "p", "Q", "q", "R", "r", "S", "s", 
  "T", "t", "V", "v", "W", "w", "X", "x", "Y", "y", "Z", "z"];


  print("Forneça 1 letra do alfabeto para analisarmos se ela é Vogal ou Consoante:");
  String? input1 = stdin.readLineSync();

  if (vogais.contains(input1)) {
    print("A letra fornecida é uma Vogal = $input1");
  } else if(consoantes.contains(input1)){
    print("A letra fornecida é uma Consoante = $input1");
  } else{
    print("O caractere fornecido não é uma letra do alfabeto.");
  }

}