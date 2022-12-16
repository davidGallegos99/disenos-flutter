import 'dart:math';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const deco = BoxDecoration(
        gradient: LinearGradient(
            stops: [0.2, 0.8],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff2E306F), Color(0xff202333)]));

    return Stack(
      children: [
        Container(
          decoration: deco,
        ),
        const Positioned(top: -120, left: -30, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(241, 142, 172, 1),
                  Color.fromRGBO(236, 98, 188, 1),
                ]),
            borderRadius: BorderRadius.circular(80)),
      ),
    );
  }
}
