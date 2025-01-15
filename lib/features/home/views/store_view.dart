import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../logic/store_provider.dart";

class StoreView extends StatelessWidget {
  final RefreshCallback? onRefresh;
  final void Function(int id)? onSelected;

  const StoreView({super.key,required this.onRefresh, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return AdaptiveRefreshIndicator.slivers(
      slivers: [
        SliverToBoxAdapter(
          child: Placeholder(
            child: Text("Searchbar"),
            fallbackHeight: 120,
          ),
        ),
        SliverToBoxAdapter(
          child: Placeholder(
            child: Text("Aktionen"),
            fallbackHeight: 350,
          ),
        ),
        SliverList.builder(itemBuilder: (context, index) {
          return Text(index.toString());
        },)
      ],
    );
  }



}
