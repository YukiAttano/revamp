import "package:flutter/material.dart";

import "../../../../shared/logic/list/separated_list.dart";
import "../../../../shared/ui/widgets/layout/gap.dart";

class ListingList extends StatelessWidget {
  final int length;
  final double? categoryWidth;
  final double? categoryHeight;
  final Widget Function(int index) itemBuilder;
  final Widget Function(int index) separatorBuilder;

  const ListingList({
    super.key,
    this.categoryWidth,
    this.categoryHeight,
    required this.length,
    required this.itemBuilder,
    this.separatorBuilder = _defaultSeparatorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: separatedList(
          length,
          itemBuilder: itemBuilder,
          separatorBuilder: separatorBuilder,
        ),
      ),
    );
  }

  static Widget _defaultSeparatorBuilder(int index) => const Gap.small();
}
