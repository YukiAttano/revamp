
import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/basic/tag.dart";
import "../../../../shared/ui/widgets/styles/tag_style.dart";

class ConditionTag extends StatelessWidget {

  final String condition;

  const ConditionTag({super.key, required this.condition});

  @override
  Widget build(BuildContext context) {
    return Tag(
      style: TagStyle.error(context),
      label: Text(condition),
    );
  }
}
