import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 45.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo para esta tarjeta'),
            subtitle: Text('Esta es la descripción de la tarjeta, para ver que sucede con el subtitulo de una tarjeta. Quiero saber que tanto crece con la tarjeta este subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('OK'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[

          FadeInImage(            
            image: NetworkImage('https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            // Podemos colocar un duration diferente y esto nos ayuda a cambiar el tiempo de entrada de la imagen
            fadeInDuration: Duration( milliseconds: 2000),
            // la imagen se mueve al aparecer, para esto colocamos un espacio / y un fit para saber como se ocupa el espacio que tiene
            height: 300.0,
            fit: BoxFit.contain
          ),

          // Image(
          //   image: NetworkImage('https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('no se que poner?')
          )            
        ],
      ),
    );
  }
}