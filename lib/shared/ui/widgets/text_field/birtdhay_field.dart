import "package:flutter/material.dart";
import "../localized.dart";

class BirthdayField extends StatefulWidget {
  final DateTime? birthday;
  final TextInputAction action;
  final InputDecoration? decoration;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final void Function(DateTime birthday)? onSelectDate;

  const BirthdayField({
    super.key,
    this.birthday,
    this.action = TextInputAction.next,
    this.decoration,
    this.firstDate,
    this.lastDate,
    this.onSelectDate,
  });

  @override
  State<BirthdayField> createState() => _BirthdayFieldState();
}

class _BirthdayFieldState extends State<BirthdayField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _updateTextField();
  }

  @override
  void didUpdateWidget(covariant BirthdayField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.birthday != oldWidget.birthday) _updateTextField();
  }

  void _updateTextField() {
    if (widget.birthday == null) {
      _controller.text = "";
      return;
    }

    MaterialLocalizations l = MaterialLocalizations.of(context);
    _controller.text = l.formatFullDate(widget.birthday!);
  }

  @override
  Widget build(BuildContext context) {
    return Localized(
      localize: (s) {
        return TextField(
          controller: _controller,
          readOnly: true,
          textInputAction: widget.action,
          onTap: _onOpenBirthdaySelector,
          decoration: (widget.decoration ?? const InputDecoration()).copyWith(labelText: s.birthday),
        );
      },
    );
  }

  Future<void> _onOpenBirthdaySelector() async {
    DateTime now = DateTime.now();

    DateTime lastDate = widget.lastDate ??  DateTime(now.year);
    DateTime selected = widget.birthday ?? lastDate;
    if (selected.isAfter(lastDate)) selected = lastDate;

    DateTime? birthday = await showDatePicker(
      context: context,
      currentDate: selected,
      initialDate: selected,
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: lastDate,
    );

    if (birthday != null && widget.onSelectDate != null) {
      widget.onSelectDate!(birthday);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
