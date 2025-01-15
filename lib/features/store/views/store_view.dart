import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../shared/ui/widgets/inherited_list_padding.dart";
import "../../../shared/ui/widgets/text_field/searchbar.dart";

class StoreView extends StatelessWidget {
  final RefreshCallback? onRefresh;
  final void Function(int id)? onSelected;

  const StoreView({super.key,required this.onRefresh, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return AdaptiveRefreshIndicator.slivers(
      padding: InheritedListPadding.of(context),
      slivers: [
        SliverToBoxAdapter(
          child: Searchbar(),
        ),
        SliverToBoxAdapter(
          child: Placeholder(
            fallbackHeight: 140,
          ),
        ),
        SliverList.builder(itemBuilder: (context, index) {
          return Text(index.toString());
        },)
      ],
    );
  }



}
