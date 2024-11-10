import "package:flutter/cupertino.dart";

class Gap extends StatelessWidget {
  final double? height;
  final double? width;

  const Gap._({super.key, this.height, this.width});

  const Gap.huge({Key? key}) : this._(key: key, height: 24, width: 24);

  const Gap.big({Key? key}) : this._(key: key, height: 16, width: 16);

  const Gap({Key? key}) : this._(key: key, height: 12, width: 12);

  const Gap.small({Key? key}) : this._(key: key, height: 8, width: 8);

  const Gap.tiny({Key? key}) : this._(key: key, height: 4, width: 4);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
