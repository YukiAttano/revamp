import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/layout/screen_view.dart";
import "../../../../shared/ui/widgets/views/adaptive_refresh_page_view.dart";
import "../../data/product.dart";
import "../widgets/doom_page.dart";
import "../widgets/doom_product_headline.dart";

class DoomView extends StatefulWidget {
  final List<Product> products;
  final RefreshCallback onRefresh;
  final void Function(int id)? onSelected;

  const DoomView({super.key, required this.products, required this.onRefresh, this.onSelected})
      : assert(products.length != 0, "Products must not be empty");

  @override
  State<DoomView> createState() => _DoomViewState();
}

class _DoomViewState extends State<DoomView> {
  final PageController _controller = PageController();

  bool _showShadow = false;

  late int _lastPage = _controller.initialPage;

  int _selectedIndex = 0;

  Product get _selected => widget.products[_selectedIndex];

  @override
  void initState() {
    super.initState();

    _controller.addListener(
      () {
        int currentPage = _controller.page!.round();
        if (currentPage != _lastPage) {
          _lastPage = currentPage;
          _onPageChanged(currentPage);
        }
        bool showShadow = _controller.offset >= 0;
        if (showShadow != _showShadow) {
          setState(() => _showShadow = showShadow);
        }
      },
    );
  }

  @override
  void didUpdateWidget(covariant DoomView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.products != widget.products) {
      if (widget.products.length < _selectedIndex + 1) {
        _selectedIndex = widget.products.length - 1;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Product selected = _selected;

    return ScreenView(
      showAppBar: false,
      viewPaddingAsListPadding: true,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: AdaptiveRefreshPageView.builder(
                onRefresh: widget.onRefresh,
                controller: _controller,
                itemCount: widget.products.length,
                builder: (context, index) {
                  var product = widget.products[index];

                  return DoomPage(product: product);
                },
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Visibility(
                visible: _showShadow,
                child: DoomProductHeadline(
                  title: selected.title,
                  onInfo: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int page) {
    setState(() => _selectedIndex = page);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
