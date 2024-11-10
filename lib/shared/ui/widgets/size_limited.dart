
import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

class SizeLimited extends StatelessWidget {
  final Widget child;

  const SizeLimited({super.key, required this.child});

  static final List<Breakpoint> _points = [WindowSizes.medium.toBreakpoint()];

  @override
  Widget build(BuildContext context) {
    return BreakpointBuilder(
      breakpoints: _points,
      builder: (context, breakpoint, child) {
        return SizedBox(
          width: breakpoint.width,
          child: child,
        );
      },
      child: child,
    );
  }
}
