import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget{
   final opciones=['uno','dos','tres','cuatro','cinco'];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('componentes temporales'),
      ),
     body:ListView(
       //children: _crearItems(),
       children: _crearItemsCorta(),
       /*children:<Widget>[
        ListTile(
          title: Text('listtile :v'),
        ),
        Divider(),
        ListTile(
          title: Text('listtile :v'),
        ),
        Divider(),
        ListTile(
          title: Text('listtile :v'),
        ),
       ],*/
     ),
     );
   }
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String val in opciones) {

      final tempWidget = ListTile(
        title: Text(val),
      );
      //lista.add(tempWidget);
      //lista.add(Divider());
      lista..add(tempWidget)
           ..add(Divider(color: Colors.red,));
      
    }

    return lista;
  }
    List<Widget> _crearItemsCorta(){
      return opciones.map((valores){

        return Column(
          children: <Widget>[
            ListTile(
              title: Text(valores + '!'),
              subtitle: Text('xdxd'),
              leading: Icon(Icons.account_circle),
              trailing: Icon(Icons.arrow_back),
              onTap: (){},
              ),
              Divider()
          ],
        );


      }).toList();
    }
  
  
}