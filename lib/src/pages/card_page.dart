
import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('cards xd'),),
    
    body:ListView(
      //padding: EdgeInsets.all(20),
      padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      children: <Widget>[
        
        _cardTipo1(),
        SizedBox(height:30),
        _cardTipo2(),
        SizedBox(height:30),
        _cardTipo1(),
        SizedBox(height:30),
        _cardTipo2(),
        SizedBox(height:30),
        _cardTipo1(),
        SizedBox(height:30),
        _cardTipo2(),
        SizedBox(height:30),
        _cardTipo1(),
        SizedBox(height:30),
        _cardTipo2(),
        SizedBox(height:30),
        _cardTipo1(),
        SizedBox(height:30),
        _cardTipo2(),
        SizedBox(height:30),
        _cardTipo1(),
        SizedBox(height:30),
        _cardTipo2(),
        SizedBox(height:30),

      ],
    ),
    );
  }
   Widget _cardTipo1(){

     return Card(
       elevation: 10.0,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Column(
           children: <Widget>[
                ListTile(
                  leading:Icon(Icons.airplay,color: Colors.green,),
                  title: Text('titulo xdxd'),
                  subtitle: Text('subtitulo xdxDXDXDx'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){}, 
                      child:Text('ok XDx'),
                    ),
                    FlatButton(
                      onPressed: (){}, 
                      child:Text('cancel'),
                    )
                  ],
                ),

           ],
        ),

     );

   }
   Widget _cardTipo2(){
     final card = Container(
       //clipBehavior: Clip.antiAlias,
              child: Column(
                children:<Widget>[

                FadeInImage(
                  image: NetworkImage('https://images7.alphacoders.com/407/407469.jpg'),
                  placeholder: AssetImage('assets/original.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300.0,
                  fit: BoxFit.cover ,
                ),
                Container(
                   padding: EdgeInsets.all(10),
                   child: Text('solo estoy escribiendo')
                   
                  ),
                ]),
     );
     return Container(//para controlar mejor la imagen
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30.0),
         color: Colors.white,//color del cuadro donde esta el texto
         boxShadow: <BoxShadow>[
           BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,//que tan redondeado de la sombra
            spreadRadius:2.0 ,//expandir la sombra
            offset: Offset(2.0, 2.0)//mover la sombra

            )
         ]
         //color: Colors.green
       ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: card,
        ),
       );
   }
}