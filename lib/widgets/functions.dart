import 'package:flutter/widgets.dart';

class Functions extends StatelessWidget {
  const Functions({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color.fromRGBO(247, 247, 247, 1),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(210, 210, 210, 1),
                  blurRadius: 20.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 0.0),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
            child: Image.asset('Assets/$image'),
          ),
        ),
        Text(
          image.substring(0, image.length - 3),
          style: const TextStyle(fontSize: 13),
        )
      ],
    );
  }
}
