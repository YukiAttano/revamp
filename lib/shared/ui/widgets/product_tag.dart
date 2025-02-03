import "package:flutter/material.dart";

import "basic/tag.dart";
import "styles/tag_style.dart";

class ProductTag extends StatelessWidget {
  final Widget child;

  const ProductTag({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Tag(
      style: TagStyle.lowEmphasis(context),
      child: child,
    );
  }
}
