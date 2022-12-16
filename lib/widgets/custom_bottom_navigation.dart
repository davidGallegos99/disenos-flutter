import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(55, 57, 84, 1),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height * 0.1,
      child: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        items: const [
          BottomNavigationBarItem(
              label: 'Calendario', icon: Icon(Icons.calendar_today_outlined)),
          BottomNavigationBarItem(
              label: 'Grafica', icon: Icon(Icons.pie_chart_outline_outlined)),
          BottomNavigationBarItem(
              label: 'Usuarios',
              icon: Icon(Icons.supervised_user_circle_outlined))
        ],
      ),
    );
  }
}
