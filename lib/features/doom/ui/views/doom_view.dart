import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../../shared/data/product.dart";
import "../../../../shared/ui/widgets/layout/screen_view.dart";
import "../../../../shared/ui/widgets/views/adaptive_refresh_page_view.dart";
import "../widgets/doom_page.dart";
import "../widgets/doom_product_headline.dart";

class DoomView extends StatefulWidget {
  final List<DoomProduct> products;
  final RefreshCallback? onRefresh;
  final void Function(int id)? onSelected;

  const DoomView({super.key, required this.products, required this.onRefresh, this.onSelected})
      : assert(products.length != 0, "Products must not be empty");

  @override
  State<DoomView> createState() => _DoomViewState();
}

class _DoomViewState extends State<DoomView> {

  static const CupertinoSliverRefreshControlConfiguration _cupertinoConfig = CupertinoSliverRefreshControlConfiguration();
  bool _isCupertinoRefreshVisible = false;

  final PageController _controller = PageController();

  bool _showShadow = false;

  late int _lastPage = _controller.initialPage;

  int _selectedIndex = 0;

  DoomProduct get _selected => widget.products[_selectedIndex];

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

        // see _onRefresh to understand why we track the values
        double minOffset = _isCupertinoRefreshVisible ? _cupertinoConfig.refreshIndicatorExtent : 0;

        bool showShadow = _controller.offset >= minOffset;
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
    DoomProduct selected = _selected;

    return ScreenView(
      showAppBar: false,
      viewPaddingAsListPadding: true,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: AdaptiveRefreshPageView.builder(
                onRefresh: widget.onRefresh != null ? () async => _onRefresh(context) : null,
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

  /// tracks whether the CupertinoSpinner is active to properly calculate [_showShadow]
  /// to avoid a visual bug.
  /// (if the spinner is visible, scrolling down and up again will let the shadow stay visible)
  Future<void> _onRefresh(BuildContext context) async {
    assert(widget.onRefresh != null, "onRefresh must not be null");

    // TODO(Alex): hold this in sync with RefreshIndicator.adaptive RefreshIndicator logic
    //  to properly track whether the CupertinoSpinner is visible or not.
    TargetPlatform platform = Theme.of(context).platform;
    bool useMaterial = platform != TargetPlatform.iOS && platform != TargetPlatform.macOS;

    if (!useMaterial) setState(() => _isCupertinoRefreshVisible = true);
    try {
      await widget.onRefresh!();
    } finally {
      if (mounted && !useMaterial) setState(() => _isCupertinoRefreshVisible = false);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
