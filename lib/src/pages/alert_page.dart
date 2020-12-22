

import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert page'),
        ),
        body: Center(
          child:RaisedButton(
            child: Text('boton de alerta'),
            onPressed:() => _mostrarAlerta(context),
            color:Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),//borde redondeado
            ),
        ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.polymer),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    );
  }
  void _mostrarAlerta (BuildContext context){
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
         title: Text('titulo xdxd') ,
         content: Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Text('esto es de la tarjeta'),
             FlutterLogo(size:100.0),
           ],
         ),
         actions: <Widget>[
           FlatButton(
             child:Text('cancelar'),
             onPressed: ()=> Navigator.of(context).pop(),
           ),
           FlatButton(
             child:Text('Ok'),
             onPressed: (){
               Navigator.of(context).pop();
             },
           ),
         ],
         
        );
      },

      );

  }
}
