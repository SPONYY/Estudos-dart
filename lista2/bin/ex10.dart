import 'dart:io';

void main(){

  print("/////////////////////////");
  print('''
  Faça um Programa que pergunte em que turno você estuda. Peça para digitar M-matutino ou V-Vespertino ou N- Noturno. 
  Imprima a mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou "Valor Inválido!", conforme o caso.''');
  print("/////////////////////////\n");


  int turno = 4;

  do {
    
    stdout.write("Em que turno você estuda? (M - matutino / V - Vespertino / N - Noturno) = ");
    String? input = stdin.readLineSync();

    switch (input) {
      case "M":
      case "m":
        print("Bom dia!");
        turno = 1;
        break;
      case "V":
      case "v":
        print("Boa Tarde!");
        turno = 2;
        break;
      case "N":
      case "n":
        print("Boa Noite!");
        turno = 3;
        break;
      default:
        print("Valor inválido! Por favor, utilize somente os valores mencionado (M - matutino / V - Vespertino / N - Noturno)");
        turno = 4;
        continue;
    } 
  } while (turno == 4);

}