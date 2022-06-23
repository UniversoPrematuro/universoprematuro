import 'package:flutter/material.dart';

class BottomNav {
 static const list = [ 
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
              
              ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home_max_outlined),
             label: "Desenvolvimento",
              
             ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home_max_outlined),
             label: "Crescimento",
              
             ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Configurações",)
 ];
}