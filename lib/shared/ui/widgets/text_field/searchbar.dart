import "package:flutter/material.dart";

class Searchbar extends StatelessWidget {

  final TextEditingController? controller;
  final void Function(String text)? onSubmitted;
  final void Function()? onEditingComplete;
  final void Function(String? text)? onSaved;
  final TextInputAction inputAction;

  const Searchbar({super.key, this.controller, this.onSubmitted, this.onEditingComplete, this.onSaved, this.inputAction = TextInputAction.search});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: onSubmitted,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      textInputAction: inputAction,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
