import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exception/bank_controller_exception.dart';
import 'models/account.dart';

void testNullSafety(){
  Account? myAccount = Account(name: 'Ramos', balance: 200, isAuthenticated: true);

  //Simulando uma cominicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if(randomNumber <= 5){
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.runtimeType);

  //Teste forçado: não funciona
  //print(myAccount!.balance);
  print(myAccount.createdAt);
  //print(myAccount.createdAt.day);

  // conversão direta: má pratica
  //print(myAccount!.balance);
  //print(myAccount.createdAt!.day);

  //teste if-else para conferir a possibilidade nula
  if(myAccount != null){
    print(myAccount.balance);
    if(myAccount.createdAt != null){
      print(myAccount.createdAt!.day);
    }
  }else{
    print("Conta nula");
  }

  //operador ternario
  print(myAccount != null ? myAccount.balance : "Conta nula");

  // chamada segura
  print(myAccount?.balance);
}

void main() {
  testNullSafety();

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  Account accoutTest = Account(name: "Ricarth", balance: 20, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
      Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
      Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try{
    bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 599);

    if(result){
      //print("Transação concluída com sucesso!");
    }
  }on SenderIdInvalidException catch (e){
    print(e);
    print("O ID '${e.idSender}' do remetente não é um ID válido!");
  }on ReceiverIdInvalidException catch (e){
    print(e);
    print("O ID '${e.idReceiver}' do destinatário não é um ID válido!");
  }on SenderNotAuthenticatedException catch (e){
    print(e);
    print("O usuário remetente de ID '${e.idSender}' não está autenticado!");
  }on SenderBalanceLowerThanException catch (e){
    print(e);
    print("O usuário de ID '${e.idSender}' tentou enviar ${e.amount}, sendo que na sua conta tem apenas ${e.senderBalance}.");
  }on Exception{
    print("Algo deu errado!");
  }
}