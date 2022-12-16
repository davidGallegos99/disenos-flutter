import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(80, 194, 221, 1),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          const _Page1(),
          Container(
            color: const Color.fromRGBO(80, 194, 221, 1),
            child: const Center(
              child: _CustomTxtButton(),
            ),
          )
        ],
      ),
    );
  }
}

class _CustomTxtButton extends StatelessWidget {
  const _CustomTxtButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, 'complex_design'),
      style: TextButton.styleFrom(
          elevation: 10,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: const Text(
        'Bienvenido',
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}

class _Page1 extends StatelessWidget {
  const _Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [_Background(), _MainContent()],
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin:
          EdgeInsets.only(top: size.height * 0.15, bottom: size.height * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _TemperatureDate(),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _TemperatureDate extends StatelessWidget {
  const _TemperatureDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
        color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);
    return Column(
      children: const [
        Text(
          '11°',
          style: style,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Miércoles',
          style: style,
        ),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(80, 194, 221, 1),
        alignment: Alignment.topCenter,
        height: double.infinity,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}
