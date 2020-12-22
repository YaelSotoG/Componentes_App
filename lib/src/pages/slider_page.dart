import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {

  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  double _valorslider=100.0;
  bool _bloquearcheck=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('slider'),
       ),
       body: Container(
         padding: EdgeInsets.only(top:50),
         child:Column(
           children:<Widget>[
            _crearslider(),
           Expanded(
             child: _crearimagen(),
           ),
           _crearchecbox(),
           _crearswitch(),
           ],
         ),
       ),
    );
  }


  Widget _crearslider(){//no varia entonces para variar es el stateful widget
    return Slider(
      activeColor: Colors.indigo,
      label: 'tamaño',
      //divisions: 20,
      value: _valorslider,
      min: 10.0,
      max: 400.0,
      onChanged:(_bloquearcheck)?null:(valor){
        setState(() {
          _valorslider=valor;
        });
       
      },
    );
  }
  Widget _crearimagen(){
    return Image(
      image: NetworkImage('https://www.tonica.la/export/sites/debate/img/2020/01/25/megaman_collection.jpg_1528842160.jpg'),
      width: _valorslider,
      fit: BoxFit.contain,
    );
  }
  Widget _crearchecbox(){
   /* return Checkbox(
      value:_bloquearcheck ,
      onChanged: (valor){
        setState(() {
          _bloquearcheck=valor;
        });
      },
    );*/
    return CheckboxListTile(
      title: Text('bloquear slider'),
      value:_bloquearcheck ,
      onChanged: (valor){
        setState(() {
          _bloquearcheck=valor;
        });
      },
    );

  }
  Widget _crearswitch(){
    return SwitchListTile(
      title: Text('bloquear slider'),
      value:_bloquearcheck ,
      onChanged: (valor){
        setState(() {
          _bloquearcheck=valor;
        });
      },
      );
  }
}