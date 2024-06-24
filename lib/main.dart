import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main () => runApp(Expenses()); //inicia com o widget Expenses

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

//cria a classe MyHomePage que é um widget da classe de home
class MyHomePage extends StatelessWidget{

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      amount: 310.76,
      date: DateTime.now(),
    ), 
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      amount: 211.30,
      date: DateTime.now(),
    )
  ];



  @override
  Widget build(BuildContext contexrt) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Text((tr.title).toString()),
              );
            }).toList(),
            )
        ],
      ),
    );
  }
}
