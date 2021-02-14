import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
    // estilo de boton para elevatedbutton
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.blue,
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  );
    // Flattbutton
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
                      primary: Colors.black87,
                      minimumSize: Size(88, 36),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Alert Page'),
        ),
        body: Center(
          child: ElevatedButton(
              child: Text('Mostrar Alerta'),
              style: raisedButtonStyle,
              //color: Colors.blue,
              //textColor: Colors.white,
              //shape: StadiumBorder(),              
              onPressed: () => _mostrarAlert(context),

          ),
        ),
        floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add_location),
              onPressed: (){
                  Navigator.pop(context);
              },
          ),
    );
  }



    void _mostrarAlert(BuildContext context){

      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                title: Text('Titulo'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget> [
                    Text('Este es el contenido de la caja de alerta'),
                    FlutterLogo(size: 100.0)
                  ],
                ),
                actions: [
                        TextButton(
                          onPressed: ()=> Navigator.of(context).pop(), 
                          child: Text('Cancelar')
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          }, 
                          child: Text('Ok')
                        ),
                ],
              );
        }
        );
    }
}