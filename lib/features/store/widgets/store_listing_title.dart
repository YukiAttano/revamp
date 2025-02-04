import "package:flutter/material.dart";

import "../data/store_category.dart";
import "category_icon_button.dart";

class StoreListingTitle extends StatelessWidget {
  final StoreCategory category;
  final void Function()? onPressed;

  const StoreListingTitle({super.key, required this.category, this.onPressed});

  // TODO(Alex): implement design
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;

    TextStyle? titleStyle = textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold);

    return Visibility(
      visible: category.visible,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category.name,
            style: titleStyle,
            maxLines: 1,
          ),
          SizedBox(
            width: 25,
            height: 25,
            child: CategoryIconButton(
              onPressed: onPressed,
            ),
          )
        ],
      ),
    );
  }
}
