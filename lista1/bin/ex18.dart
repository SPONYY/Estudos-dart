import 'dart:io';

void main(){

  print("///////////////////////");
  print(''' 
  Faça um programa que peça o tamanho de um arquivo para download (em MB) e a velocidade de um link de Internet (em Mbps), calcule e informe o tempo aproximado de download 
  do arquivo usando este link (em minutos).
  ''');
  print("///////////////////////");
  print("");

  double tamanhoArquivo = 0;
  double velInternet = 0;

  do {

    print("Qual seria o tamanho do arquivo a baixar (em MB)?");
    String? input1 = stdin.readLineSync();

    tamanhoArquivo = double.tryParse(input1 ?? '') ?? 0.0;

    print("Quantos Mbps de internet você possui?");
    String? input2 = stdin.readLineSync();

    velInternet = double.tryParse(input2 ?? '') ?? 0.0;

    if (velInternet <=0 && tamanhoArquivo <=0) {
      print("A velocidade da internet e o tamanho do arquivo devem ser maiores que 0!");
    } else if(velInternet <= 0) {
      print("A velocidade da internet deve ser maior que 0!");
    } else if(tamanhoArquivo <= 0){
      print("O tamanho do arquivo a baixar deve ser maior que 0!");
    }

  } while (tamanhoArquivo <=0 || velInternet <= 0);

  double tempAproximadoDownload = tamanhoArquivo / velInternet;

  print("O tempo estimado de download em minutos para o respectivo arquivo é de = ${tempAproximadoDownload.toStringAsFixed(0)} Minuto(s)!!!");

}






