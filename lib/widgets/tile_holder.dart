import 'package:flutter/material.dart';

class TileHolder extends StatelessWidget {
  const TileHolder({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      width: 95,
      margin: const EdgeInsets.only(right: 25, bottom: 20),
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
        padding: const EdgeInsets.only(left: 24, right: 24, top: 17, bottom: 17),
        child: Image.asset('Assets/$image'),
      ),
    );
  }
}
