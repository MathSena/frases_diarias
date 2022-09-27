import 'package:flutter/material.dart';

// Função principal
void main(){
  // runApp
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));

}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases diárias"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
      /* width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amberAccent)
      ), */
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          Text(
            "Clique aqui abaixo para gerar uma frase",
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.green
            ),

          ),
          ElevatedButton(onPressed: (){},
            child: Text(
              "Nova frase",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          )

        ],
      ),
    ),
      ),
    );
  }
}


