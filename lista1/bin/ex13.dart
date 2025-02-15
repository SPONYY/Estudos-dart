import 'dart:io';

void main(){

  print("///////////////////////");
  print("CALCULANDO O PESO IDEAL PARA HOMENS E MULHERES COM BASE NA ALTURA DE UMA PESSOA");
  print("///////////////////////");
  print("");

  int sexo = 2;

  do {

    print("Você é homem ou mulher? (H / M)");
    String? input1 = stdin.readLineSync();

    switch (input1) {
      case "H":
      case "h":
      case "Homem":
      case "homem":
        sexo = 1;
        break;
      case "M":
      case "m":
      case "Mulher":
      case "mulher":
        sexo = 0;
        break;
      default:
        print("Entrada inválida para sexo");
        sexo = 2; // Reinicia o loop
        continue;
    }

  } while (sexo == 2);


  if ( sexo == 1) {
    print("Você é homem, forneça a sua altura:");
    String? input2 = stdin.readLineSync();

    double altura = double.tryParse(input2 ?? '') ?? 0.0;
    double pesoIdeal = (72.7*altura) - 58;

    print("Seu peso ideal com base em seu sexo e altura é de = ${pesoIdeal.toStringAsFixed(2)}Kg");
  } else if (sexo == 0){
    print("Você é mulher, forneça a sua altura:");
    String? input2 = stdin.readLineSync();

    double altura = double.tryParse(input2 ?? '') ?? 0.0;
    double pesoIdeal = (62.1*altura) - 44.7;

    print("Seu peso ideal com base em seu sexo e altura é de = ${pesoIdeal.toStringAsFixed(2)}Kg");
  } else{
    print("Valor inválido!! A altura fornecida deve ser positiva!");
  }


}