import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../shared/ui/widgets/gap.dart";
import "../../../shared/ui/widgets/inherited_list_padding.dart";
import "../../../shared/ui/widgets/text_field/searchbar.dart";
import "../data/store_item.dart";
import "../data/store_listing/banner_listing.dart";
import "../data/store_listing/store_listing.dart";
import "../widgets/banner_box.dart";
import "../widgets/store_entry_item.dart";

class StoreView extends StatelessWidget {
  final List<StoreItem> items;
  final RefreshCallback? onRefresh;
  final void Function(int id)? onSelected;

  const StoreView({super.key, required this.onRefresh, this.onSelected, required this.items});

  @override
  Widget build(BuildContext context) {
    return AdaptiveRefreshIndicator.slivers(
      padding: InheritedListPadding.of(context),
      slivers: [
        SliverToBoxAdapter(
          child: Searchbar(),
        ),
        SliverToBoxAdapter(
          child: BannerBox(
            banner: BannerListing(
              title: "Title",
              description: "Super Long Description on Banner",
              action: "Action",
            ),
          ),
        ),
        SliverList.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return StoreEntry(entry: items[index]);
          },
          separatorBuilder: (_, __) => const Gap(),
        )
      ],
    );
  }
}
