import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes'),
      ),
      body: _lista(),
    );
  }

Widget _lista() {
  //print(menuprovider.opciones);
  /*menuprovider.cargardata().then((opciones){
          
          print('_lista');
          print( opciones );

  });
  


  return ListView(
    children: _listaitems(),
  );*/

return FutureBuilder(
  future: menuprovider.cargardata(),
  initialData: [],// informacion que va a tener por defecto en lo que se resuelve es opcional 
  builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
   // print('builder');
  //  print(snapshot.data);
    
    return ListView(
    children: _listaitems(snapshot.data, context),
    );
  },//builder algo que se muestra en la pantalla del dispositivo
);


}

 List <Widget> _listaitems(List<dynamic> data,BuildContext context) {
    /*return [
      ListTile( title: Text('hola mundo')),
      Divider(),
      ListTile( title: Text('hola mundo')),
      Divider(),
      ListTile( title: Text('hola mundo')),
      Divider(),
    ];*/
    final List<Widget> opciones=[];
    data.forEach((opt){
       final widgettemp=ListTile(
        title:Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.all_inclusive, color: Colors.orange,),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          /*final route = MaterialPageRoute(
            builder:(context)=> AlertPage()
            
             );
          Navigator.push(context, route);*/
        },
       );
       opciones..add(widgettemp)
               ..add(Divider());
    });
  return opciones;
  }

}