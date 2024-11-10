import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/button/info_icon_button.dart";

class DoomProductHeadline extends StatelessWidget {
  final String title;
  final void Function()? onInfo;

  const DoomProductHeadline({super.key, this.title = "", this.onInfo});

  @override
  Widget build(BuildContext context) {
    Widget infoIcon = InfoIconButton(
      onPressed: onInfo,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility.maintain(
          visible: false,
          child: infoIcon,
        ),
        _HeadlineTitle(title: title),
        infoIcon,
      ],
    );
  }
}

class _HeadlineTitle extends StatelessWidget {
  final String title;

  const _HeadlineTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Text(
      title,
      style: textTheme.titleLarge,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
