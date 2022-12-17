import 'dart:io';

void main() {
  // Informações sobre mim
  /* int idade = 18;
  double altura = 1.73;
  bool geek = true;
  const String nome = 'Matheus';
  final String apelido;
  bool maiorDeIdade;
  int energia = 100;

  // Método para definir se a pessoa é maior de idade
  if(idade >= 18){
    maiorDeIdade = true;
  }else{
    maiorDeIdade = false;
  }

  // Método para dizer quantas voltas serão dadas
  for(int i = 1; i < 0; i = i+2){
    print('Minha energia é $i');
  }

  // Método para retirar a energia
  while(energia > 0){
    print('Mais uma repetição');
    energia = energia - 5;
  }

  // Exemplo de outra forma de usar o while
  // do{
  //   print('Mais uma repetição');
  //   energia = energia - 6;
  // }while(energia>0);

  apelido = 'Ramos';

  // Definindo lista com os status da persona
  List<dynamic> ramos = [idade,altura,geek,nome,apelido];

  //Frase que recebe os dados da lista
  /* String frase = 'Eu sou ${ramos[3]} \n'
      'mas meu nome é ${ramos[4]}, \n'
      'me considero geek? ${ramos[2]}. \n'
      'Eu tenho ${ramos[1]} de altura e \n'
      'tenho ${ramos[0]} anos de idade \n'
      'Eu sou maior de idade? $maiorDeIdade'; */

  // print(frase); //
   */

  //sublist
  /* List<String> listaNomes = ['Richarlison','Paquetá','Vini Jr','Neymar','Casemiro','Martinelli'];
  List<String> sublist = listaNomes.sublist(1,3);
  print(sublist);
  */

  //forEach
  /* List<String> listaNomes = ['Richarlison','Paquetá','Vini Jr','Neymar','Casemiro','Martinelli'];
  listaNomes.forEach((element){
    print(element);
  });
  print('Acabou!');
   */

  //Contains
  /* List<String> listaNomes = ['Richarlison','Paquetá','Vini Jr','Neymar','Casemiro','Martinelli'];
  String procurando = "Neymar";
  if (listaNomes.contains(procurando)){
    print('Achou!');
  }else{
    print('Não achou :(');
  }
   */

  //Reduce
  /* List<String> listaNomes = ['Richarlison','Paquetá','Vini Jr','Neymar','Casemiro','Martinelli'];
  String name = listaNomes.reduce((value, element){
    return value + " " + element;
  });
  print(name);
   */

  //Where
  /*List<String> listaNomes = ['Richarlison','Paquetá','Vini Jr','Neymar','Casemiro','Martinelli'];
  Iterable maior = listaNomes.where((element) => element.length > 6);
  print(maior);
   */

  /*print('Qual é a sua idade?');
  String? input = stdin.readLineSync();
  if(input != null) {
    int idade = int.parse(input);
    print('Sua idade ano que vem será ${idade+1}.');
  }
   */


  print('Qual sua altura?');
  String? input1 = stdin.readLineSync();

  print('Qual é o seu peso?');
  String? input2 = stdin.readLineSync();

  if(input1 != null && input2 != null) {
    double altura = double.parse(input1);
    double peso = double.parse(input2);
    print('Seu imc é ${peso/(altura * altura)}');
  }

}
