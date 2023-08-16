import 'package:creacion_de_usuario_en_login/screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: FormScreen(),

      title: 'Seccion de usuario',
   
      
      
        
      
    );
  }
  
  // ignore: non_constant_identifier_names
  
  
  
}

