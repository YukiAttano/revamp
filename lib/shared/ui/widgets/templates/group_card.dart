import "package:flutter/material.dart";
import "../layout/gap.dart";
import "../styles/group_card_style.dart";
import "../styles/group_card_theme.dart";

class GroupCard extends StatefulWidget {
  final FocusNode? node;
  final GroupCardTheme? theme;
  final Widget? title;
  final Widget child;

  const GroupCard({super.key, this.node, this.theme, this.title, required this.child});

  @override
  State<GroupCard> createState() => _GroupCardState();
}

class _GroupCardState extends State<GroupCard> {
  late GroupCardTheme _theme;
  late GroupCardStyle _style;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _updateStyle();
  }

  void _updateStyle() {
    _theme = GroupCardTheme.fallback(context);
    _theme = _theme.merge(Theme.of(context).extension<GroupCardTheme>());
    _theme = _theme.merge(widget.theme);

    GroupCardStyle fallbackStyle = GroupCardStyle.fallback(context);

    _style = fallbackStyle;
  }

  void _onFocusChange(bool value) {
    GroupCardStyle fallbackStyle = GroupCardStyle.fallback(context);

    GroupCardStyle s = (value ? _theme.focusedStyle : _theme.unfocusedStyle) ?? fallbackStyle;

    setState(() => _style = s);
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.node,
      onFocusChange: _onFocusChange,
      child: Card(
        margin: EdgeInsets.zero,
        shape: _style.shape,
        elevation: _style.elevation,
        color: _style.color,
        child: Padding(
          padding: _style.padding ?? EdgeInsets.zero,
          child: Column(
            children: [
              Visibility(
                visible: widget.title != null,
                child: Column(
                  children: [
                    DefaultTextStyle(
                      style: _style.titleStyle ?? DefaultTextStyle.of(context).style,
                      child: Padding(
                        padding: _style.titlePadding ?? EdgeInsets.zero,
                        child: widget.title ?? const SizedBox.shrink(),
                      ),
                    ),
                    const Gap(),
                  ],
                ),
              ),
              widget.child,
            ],
          ),
        ),
      ),
    );
  }
}
