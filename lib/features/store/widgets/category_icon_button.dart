import "package:flutter/material.dart";

class CategoryIconButton extends StatelessWidget {
  final void Function()? onPressed;

  const CategoryIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);
    Color? bgColor = theme.disabledColor.withAlpha(40);

    return IconButton.filledTonal(
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        backgroundColor: bgColor,
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
