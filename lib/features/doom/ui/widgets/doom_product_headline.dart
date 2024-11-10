import "package:flutter/cupertino.dart";

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
        Text(title),
        infoIcon,
      ],
    );
  }
}
