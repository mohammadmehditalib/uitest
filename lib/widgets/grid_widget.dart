import 'package:flutter/material.dart';
import 'package:ui_test/widgets/functions.dart';
import 'package:ui_test/widgets/tile_holder.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key, required this.check, required this.dataList});
  final bool check;
  final List dataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 318.8,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: check
              ? const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)
              : const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          shrinkWrap: true,
          itemCount: check ? 9 : 8,
          itemBuilder: (context, index) {
            return check ? TileHolder(image: dataList[index]) : Functions(image: dataList[index]);
          }),
    );
    ;
  }
}
