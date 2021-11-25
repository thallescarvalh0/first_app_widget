import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercicio Montagem GUI',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercicio Montagem GUI'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(4),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                      'TELA DE CADASTRO',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text('NOME:',style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite o nome',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text('ENDEREÇO:',style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite o endereço',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text('EMAIL:',style: TextStyle(fontSize: 15),),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Digite o email',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Spacer(flex: 20,),
                    CancelButton(),
                    Spacer(flex: 3,),
                    SaveButton(),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        child: const Text("Salvar"),
        onPressed: () {},
      ),
    );
    return button;
  }
}

class CancelButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        child: const Text("Cancelar"),
        onPressed: () {},
      ),
    );
    return button;
  }
}
