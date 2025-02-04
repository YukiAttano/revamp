import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/gap.dart";
import "../../data/store_listing/banner_listing.dart";
import "../../data/store_listing/brand_listing.dart";
import "../../data/store_listing/category_listing.dart";
import "../../data/store_listing/product_listing.dart";
import "../banner_box.dart";
import "../brand_box.dart";
import "../category_box.dart";
import "../product_box.dart";
import "listing_list.dart";

class StoreBannerList extends StatelessWidget {
  final List<BannerListing> banner;

  final double categoryHeight;

  const StoreBannerList({super.key, required this.banner, double? categoryHeight})
      : categoryHeight = categoryHeight ?? BannerBox.fallbackHeight;

  @override
  Widget build(BuildContext context) {
    switch (banner.length) {
      case 0:
        return const SizedBox.shrink();
      case 1:
        return BannerBox(banner: banner.first, height: categoryHeight);
    }

    return _BannerList(banner: banner, height: categoryHeight);
  }
}

class _BannerList extends StatefulWidget {
  final List<BannerListing> banner;

  final double height;

  const _BannerList({super.key, required this.banner, required this.height});

  @override
  State<_BannerList> createState() => _BannerListState();
}

class _BannerListState extends State<_BannerList> with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(length: widget.banner.length, vsync: this);

  @override
  Widget build(BuildContext context) {

    const EdgeInsets padding = EdgeInsets.only(right: 8);

    return SizedBox(
      height: widget.height,
      child: TabBarView(
        controller: _controller,
        children: List.generate(
          widget.banner.length,
          (index) {
            return Padding(
              padding: padding,
              child: BannerBox(
                banner: widget.banner[index],
                child: TabPageSelector(
                  controller: _controller,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
