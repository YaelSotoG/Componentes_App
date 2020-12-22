import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0f84d179-347c-449f-807c-b67d6b84f5bb/d9ra9cm-8ebaef34-7af1-4f20-b458-080646caa4b8.png/v1/fill/w_900,h_726,q_80,strp/omega_zero_o_megaman_demonio_by_megaman_x_ultimate_d9ra9cm-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzI2IiwicGF0aCI6IlwvZlwvMGY4NGQxNzktMzQ3Yy00NDlmLTgwN2MtYjY3ZDZiODRmNWJiXC9kOXJhOWNtLThlYmFlZjM0LTdhZjEtNGYyMC1iNDU4LTA4MDY0NmNhYTRiOC5wbmciLCJ3aWR0aCI6Ijw9OTAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.uOyCbwcOb1lm3K3pJXG-M_nsXm7_YuhZeDTUdqEoVjE'),
              radius: 25.0,
            ),
          ),
          
         Container(
            margin: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
             child: Text('SL'),
             backgroundColor: Colors.lightGreenAccent,
           ),
         ),
         
        ],
        ),
        body: Center(
          child: FadeInImage(
             placeholder: AssetImage('assets/original.gif'),
             fadeInDuration: Duration(milliseconds:20),
             image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0f84d179-347c-449f-807c-b67d6b84f5bb/d9ra9cm-8ebaef34-7af1-4f20-b458-080646caa4b8.png/v1/fill/w_900,h_726,q_80,strp/omega_zero_o_megaman_demonio_by_megaman_x_ultimate_d9ra9cm-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzI2IiwicGF0aCI6IlwvZlwvMGY4NGQxNzktMzQ3Yy00NDlmLTgwN2MtYjY3ZDZiODRmNWJiXC9kOXJhOWNtLThlYmFlZjM0LTdhZjEtNGYyMC1iNDU4LTA4MDY0NmNhYTRiOC5wbmciLCJ3aWR0aCI6Ijw9OTAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.uOyCbwcOb1lm3K3pJXG-M_nsXm7_YuhZeDTUdqEoVjE'),
             ),
        ),
    );
  }
}