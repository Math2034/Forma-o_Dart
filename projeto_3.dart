import 'Transporte.dart';
import 'Viagem.dart';

void main() {

  Viagem viagemMaio = Viagem(locomocao:  Transporte.aviao);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 100;
  print(viagemMaio.consultarTotalLocaisVisitados);
  
  // Iterables
  /* print(registrosVisitados.first);
  print(registrosVisitados.last);
  print(registrosVisitados.isEmpty);

  print(registrosVisitados.contains("São Paulo"));
  print(registrosVisitados.contains("Sorocaba"));


  //Map

  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Recife"] = 2000;
  registrarPrecos["Nova York"] = "MUITO CARO!";


  //print(registrarPrecos);

  //Dynamic e var
  dynamic meuNumero = 7.9;
  //print(meuNumero.runtimeType);
  meuNumero = "String qualquer";
  //print(meuNumero.runtimeType);

  Viagem viagemHoje = Viagem();
  Viagem.codigoTrabalho;
   */
}

/*
Set<String> registrarDestinos(String destino, Set<String> banco){
  banco.add(destino);
  return banco;
}
 */