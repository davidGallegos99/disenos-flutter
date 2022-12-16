import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            const _PosterAndHeader(),
            const SizedBox(
              height: 30,
            ),
            const _IconsRow(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: const Text(
                'Cillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum estfugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est   fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. DoloreCillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum estanim sit dolore sint tempor nulla. Dolore Cillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. Dolore Cillum ea eu ipsum tempor aliqua enim qui culpa laboris duis fugiat labore. Aute et in cillum est anim sit dolore sint tempor nulla. Dolore excepteur cupidatat velit irure dolore commodo labore in non. Tempor amet qui consequat eu. Ea consectetur ad esse laborum eu dolor labore laborum ex eu do ut. Duis eu sunt ex ad qui minim ea fugiat veniam laborum nostrud occaecat.',
                textAlign: TextAlign.justify,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _IconsRow extends StatelessWidget {
  const _IconsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _Icon(icon: Icons.call, title: 'CALL'),
          _Icon(icon: Icons.near_me, title: 'ROUTE'),
          _Icon(icon: Icons.share, title: 'SHARE')
        ],
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon),
          iconSize: 24,
          color: Colors.blue,
        ),
        const SizedBox(
          height: 0,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class _PosterAndHeader extends StatelessWidget {
  const _PosterAndHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: FadeInImage(
              height: MediaQuery.of(context).size.height * 0.33,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: const NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjPQtTYaAj87pAtPH1utTjQCOMpTVxhuL2cg&usqp=CAU')),
        ),
        const SizedBox(
          height: 40,
        ),
        const _TitleRate()
      ],
    );
  }
}

class _TitleRate extends StatelessWidget {
  const _TitleRate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'oeschinen Lake Campground',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Kandersteg, Switzerland',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey))
            ],
          ),
          Row(
            children: const [
              Icon(Icons.star, size: 20, color: Colors.red),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}
