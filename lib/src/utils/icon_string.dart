import 'package:flutter/material.dart';

final _icons = <String, IconData>{//mapa

'add_alert'    :Icons.add_alert,
'accessibility':Icons.perm_identity,
'folder_open'  :Icons.folder_open,
'donut_large'  :Icons.donut_large,
'inputs'        :Icons.input,
'list'         :Icons.slideshow,
'listview'     :Icons.brightness_low,

};


Icon getIcon (String nombreIcono){
  return Icon(_icons[nombreIcono],color: Colors.red);
}




