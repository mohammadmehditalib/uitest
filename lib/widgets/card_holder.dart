import 'package:flutter/material.dart';
class CardHolder extends StatelessWidget {
  const CardHolder({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset('Assets/$image');
  }
}
