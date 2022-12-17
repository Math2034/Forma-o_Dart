import 'Transporte.dart';

class Viagem{

  static String codigoTrabalho = "jhflasb123";
  double dinheiro = 0;
  Transporte locomocao;
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  // Set
  Set<String> registrosVisitados = <String>{};

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
  }

  void escolherTransporte(Transporte locomocao){

// Switch
    switch (locomocao){
      case Transporte.carro:
        print("Vou de CARRO para aventura");
        break;
      case Transporte.bike:
        print("Vou de BIKE para aventura");
        break;
      case Transporte.onibus:
        print("Vou de BUSÂO para aventura");
        break;
      default:
        print('Estou indo para a aventura, isso é o que importa!');
    }
  }

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt){
    if (novaQnt < 10){
      _totalLocaisVisitados = novaQnt;
    }else{
      print('Não é possível!');
    }
  }

}