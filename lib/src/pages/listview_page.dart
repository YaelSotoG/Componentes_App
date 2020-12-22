import 'dart:async';

import 'package:flutter/material.dart';

class ListvPage extends StatefulWidget {
  

  @override
  _ListvPageState createState() => _ListvPageState();
}

class _ListvPageState extends State<ListvPage> {
  
  ScrollController _controlarscrol=new ScrollController();
  List<int> _listanum=new List();
  int _ultimonum= 0;
  bool _estacargando=false;


  @override
  void initState() {//sobreescribe el state para que se vuelva infinito se tiene que reescribir una y otra vez por eso es el initstate
    // TODO: implement initState
    super.initState();
    _agregar10();
    
    _controlarscrol.addListener((){ //hace que cuando lleguemos al final cargue otras 10 imagenes 
      if(_controlarscrol.position.pixels== _controlarscrol.position.maxScrollExtent){//checa como me muevo en la pantalla
        //_agregar10();
        traerdata();
      }
    });
 

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('listview'),
       ),
       body:Stack(
         children: <Widget>[
           _crearlista(),
           _crearloading(),
         ],
       ),
       
      // _crearlista(), 
       //Text('listas.....'),
    );
  }



    Widget _crearlista(){
     return RefreshIndicator(
            
            onRefresh: obtenerpage1,

            child: ListView.builder(//dibuja los elementos
       controller: _controlarscrol,
         itemCount: _listanum.length,
         itemBuilder: (BuildContext contex,int entero){
           final imagen=_listanum[entero];
           return FadeInImage(
             image:NetworkImage('https://i.picsum.photos/id/$imagen/500/300.jpg'),
             placeholder: AssetImage('assets/original.gif'),
             );

         },//el builder es como se dibujara ese elemento
         //picsum es para agarrar fotos de relleno :v
       ),
     );

    }

    Future <Null> obtenerpage1()async{//para que se pueda actualizar la pagina

      final duracion=new Duration(seconds:2);

      new Timer (duracion, (){
        _listanum.clear();//borra todo 
        _ultimonum++;//carga las imagenes
        _agregar10();
        
      } );
       return Future.delayed(duracion);
    }





    void _agregar10(){
      for(int a=1; a<10; a++  ){
        _ultimonum++;
        _listanum.add(_ultimonum);
      }
      setState(() {
        
      });
    }
  
  Future<Null> traerdata() async {
    _estacargando=true;
    setState(() {//se redibuja por que _estacargando cambio
      final duracion=new Duration(seconds:2);
      return new Timer(duracion, respuestaHTTP);

    

    });
  }

  void respuestaHTTP(){// ya cargo las imagenes de internet
    _estacargando=false;
    
    _controlarscrol.animateTo(
      _controlarscrol.position.pixels+100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds:250),
    
    );
   
    _agregar10();

  }


  Widget _crearloading(){

    if (_estacargando)
    {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          CircularProgressIndicator(),
            ],
          ),
          SizedBox(height:15.0)
          ],
      );
    }
    else
    {
      return Container();
    }

  }

}