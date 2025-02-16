import 'dart:io';
void main(){

    print("/////////////////////////");
    print("Faça um Programa que peça dois números e imprima o maior deles.");
    print("/////////////////////////");
    print("");

    print("Forneça o primeiro número:");
    String? input1 = stdin.readLineSync();

    print("Forneça o segundo número:");
    String? input2 = stdin.readLineSync();

    double numero1 = double.tryParse(input1 ?? '') ?? 0.0;
    double numero2 = double.tryParse(input2 ?? '') ?? 0.0;

    if (numero1 > numero2) {
        print("Entre os números fornecidos, o maior deles é o primeiro = ${numero1.toStringAsFixed(2)}");
    } else if(numero2 > numero1){
        print("Entre os números fornecidos, o maior deles é o segundo = ${numero2.toStringAsFixed(2)}");
    } else{
        print('''

            Os número fornecidos são iguais = 
        
            - Primeiro = ${numero1.toStringAsFixed(2)}
            - Segundo = ${numero2.toStringAsFixed(2)}

        ''');
    }

    

}
