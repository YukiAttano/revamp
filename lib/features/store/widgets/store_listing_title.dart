import "package:flutter/material.dart";

import "../data/store_category.dart";

class StoreListingTitle extends StatelessWidget {
  final StoreCategory category;

  const StoreListingTitle({super.key, required this.category});

  // TODO(Alex): implement design
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          category.name,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        IconButton(onPressed: null, icon: Icon(Icons.arrow_right)),
      ],
    );
  }
}
