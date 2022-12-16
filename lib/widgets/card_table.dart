import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            title: 'General',
            icon: Icons.table_chart_rounded,
            secundaryColor: Color.fromRGBO(144, 203, 254, 1),
            primaryColor: Colors.blue,
          ),
          _SingleCard(
            title: 'Transport',
            icon: Icons.directions_bus_outlined,
            secundaryColor: Color.fromRGBO(178, 141, 251, 1),
            primaryColor: Color.fromRGBO(124, 85, 250, 1),
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            title: 'Shopping',
            icon: Icons.shopping_bag_rounded,
            secundaryColor: Color.fromRGBO(253, 152, 244, 1),
            primaryColor: Color.fromRGBO(254, 66, 217, 1),
          ),
          _SingleCard(
            title: 'Bills',
            icon: Icons.blinds_closed,
            secundaryColor: Color.fromRGBO(254, 191, 156, 1),
            primaryColor: Color.fromRGBO(255, 140, 67, 1),
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            title: 'Entertaiment',
            icon: Icons.movie,
            secundaryColor: Color.fromRGBO(127, 168, 255, 1),
            primaryColor: Color.fromRGBO(80, 119, 243, 1),
          ),
          _SingleCard(
            title: 'Grocery',
            icon: Icons.apple,
            secundaryColor: Color.fromRGBO(135, 248, 140, 1),
            primaryColor: Color.fromRGBO(42, 221, 97, 1),
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            title: 'Shopping',
            icon: Icons.shopping_bag_rounded,
            secundaryColor: Color.fromRGBO(253, 152, 244, 1),
            primaryColor: Color.fromRGBO(254, 66, 217, 1),
          ),
          _SingleCard(
            title: 'Bills',
            icon: Icons.blinds_closed,
            secundaryColor: Color.fromRGBO(254, 191, 156, 1),
            primaryColor: Color.fromRGBO(255, 140, 67, 1),
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.primaryColor,
    required this.secundaryColor,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final Color primaryColor;
  final Color secundaryColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 10, sigmaY: 10, tileMode: TileMode.clamp),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(62, 66, 107, 0.7)),
            child: _CardItem(
                primaryColor: primaryColor,
                secundaryColor: secundaryColor,
                icon: icon,
                title: title),
          ),
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  const _CardItem({
    Key? key,
    required this.icon,
    required this.primaryColor,
    required this.secundaryColor,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final Color primaryColor;
  final Color secundaryColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration = BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.2, 0.8],
            colors: [secundaryColor, primaryColor]));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: decoration,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: TextStyle(color: primaryColor),
        )
      ],
    );
  }
}
