import 'package:flutter/material.dart';


class InputPAge extends StatefulWidget {

  @override
  _InputPAgeState createState() => _InputPAgeState();
}

class _InputPAgeState extends State<InputPAge> {
  
 String _nombre='';
 String _correo='';
 String _fecha='';
 String _opcionselec='volar';
 List<String> _poderes=['volar','rayos x','congelar','xdxd'];
 TextEditingController _entradadefecha = new TextEditingController();//pone la fecha en el cuadro



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('input'),
         ),
         body: ListView(
           padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
           children: <Widget>[
            _crearinput(),
            Divider(),
            _crearPersona(),
            Divider(),
            _crearcorreo(),
            Divider(),
            _crearfecha(context),
            Divider(),
            _creardropdown(),
            Divider(),
            _crearpass(),
            
                       ],
                     ),
                );
              }
            
            Widget  _crearinput() {
              return TextField(
                // autocorrect: true,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  counter: Text('letras ${_nombre.length}'),
                  hintText: 'nombre de la persona',
                  labelText: 'nombre',
                  helperText: 'solo es el nombre xdxd',
                  suffixIcon: Icon(Icons.accessible),
                  icon: Icon(Icons.account_circle),
                ),
                onChanged: (valor){
                 setState(() {
                   _nombre=valor;
                 });
                  
                 //print(_nombre);
                },
              );

            }
            Widget _crearPersona(){
                return ListTile(
                  title: Text('el nombre es: $_nombre'),
                  subtitle: Text('el correo es: $_correo'),
                  trailing: Text(_opcionselec),
                );

     }
            Widget _crearcorreo(){
               return TextField(
                // autocorrect: true,
               keyboardType: TextInputType.emailAddress,//cambia la coma por arroba
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                 // counter: Text('letras ${_nombre.length}'),
                  hintText: 'Correo',
                  labelText: 'correo',
                  suffixIcon: Icon(Icons.alternate_email),
                  icon: Icon(Icons.email),
                ),
                onChanged: (valor){
                 setState(() {
                   _correo=valor;
                 });
                  
                 //print(_nombre);
                },
              );
     }
            Widget _crearpass(){
            return TextField(
                obscureText: true,
                // autocorrect: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  //counter: Text('letras ${_nombre.length}'),
                  labelText: 'contraseña',
                  suffixIcon: Icon(Icons.vpn_key),
                  icon: Icon(Icons.lock_open),
                ),
              );
     }
            Widget _crearfecha(BuildContext context){
       return TextField(
         enableInteractiveSelection: false,
         controller: _entradadefecha,
         decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  //counter: Text('letras ${_nombre.length}'),
                  hintText: 'Fecha de nacimiento',
                  labelText: 'Fecha',
                  suffixIcon: Icon(Icons.calendar_today),
                  icon: Icon(Icons.perm_contact_calendar),
                ),
          onTap: (){
            FocusScope.of(context).requestFocus(new FocusNode());//para poder abrir el calendario
            _selecDate(context);
          },

       );
     }
            _selecDate(BuildContext context)async{
       DateTime fechaselec= await showDatePicker(
         context: context, 
         initialDate: new DateTime.now(), 
         firstDate: new DateTime(2018), 
         lastDate: new DateTime(2025),
         locale: Locale('es','ES'),
         );
       if (fechaselec != null)
       {
         setState(() {
           _fecha=fechaselec.toString();
           _entradadefecha.text=_fecha;
         });

       }
     }
          Widget _creardropdown (){
           return Row(
             children: <Widget>[
               Icon(Icons.add),
               SizedBox(width:30.0),
            
            Expanded(
            child: DropdownButton (
             value: _opcionselec,
             items: getopcionesxd(),
             onChanged: (opciones){

              setState(() {
                _opcionselec=opciones;
              });

             },

              ),),
             ],

           );

           
           
         }
         List<DropdownMenuItem<String>> getopcionesxd(){

           List <DropdownMenuItem<String>> lista = new List();

           _poderes.forEach((poder){
                     lista.add(DropdownMenuItem(
                       child: Text(poder) ,
                       value: poder,
                       ));
           });

          return lista;

         }

}