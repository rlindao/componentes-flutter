import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
          ],
        ),
    );
  }



  Widget _cardTipo1(){
      return Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
        child: Column(
            children: [
                ListTile(
                    leading: Icon(Icons.photo_album , color: Colors.blue),
                    title: Text('Soy el titulo de esta tarjeta'),
                    subtitle: Text('Aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean de lo que quiero mostrarles '),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      TextButton(
                        child: Text('Cancelar'),
                        onPressed: (){},
                      ),
                      TextButton(
                        child: Text('Ok'),
                        onPressed: (){},
                      ),
                  ],
                )
            ],
        ),
      );
  }

  Widget _cardTipo2(){
      final card =  Container(
        //clipBehavior: Clip.antiAlias,
          child: Column(
              children: [
                  FadeInImage(
                    fadeInDuration: Duration(milliseconds: 200),
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
                  ),

                  /* Image(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
                  ), */
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('No tengo idea')
                    )
              ],
          ),
      );

      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0 , 10.0),
                )
          ]
          //color: Colors.red,
        ),
        child: ClipRRect(
          borderRadius:  BorderRadius.circular(30),
          child: card,
        ),
      );
  }
}

