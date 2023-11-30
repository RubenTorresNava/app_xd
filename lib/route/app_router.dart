import 'package:flutter/material.dart';
import 'package:untitled/screens/screens.dart';
import 'package:untitled/models/menu_options.dart';

class AppRouter{
  //crear una  ruta inicial
  static const initialRoute='menu';
  //crear un arreglo que contendra las rutas para acceder a diferentes screens
  static final menuOptions=<MenuOptions>[
    MenuOptions(route: 'home', icon: Icons.home, name: 'home screen', screen: HomeScreen()),
    MenuOptions(route: 'formulario', icon: Icons.format_list_bulleted_add, name: 'formulario screen', screen: const FormularioScreen()),
    MenuOptions(route: 'images', icon: Icons.image, name: 'imagenes screen', screen: const ImageScreen()),
    MenuOptions(route: 'otro', icon: Icons.devices_other, name: 'otro screen', screen: const OtroScreen()),
    MenuOptions(route: 'alert', icon: Icons.alarm, name: 'alerta screen', screen: const AlertScreen()),
  ];
  //crear un mapa para regresar, que guarde todas las rutas en una funcion que me puedea regresar
  //posteriormente esas rutas para implementarlas en la lista de opciones
  static Map<String, Widget Function(BuildContext)>getAppRoutes(){
    Map<String, Widget Function(BuildContext)>appRoutes={};
    appRoutes.addAll({'menu':(BuildContext context)=>const MenuScreen()});
    for(final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context)=>option.screen});
    }
    return appRoutes;
  }
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const AlertScreen(),
    );
  }
}
