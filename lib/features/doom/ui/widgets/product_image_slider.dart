import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/button/go_left_icon_button.dart";
import "../../../../shared/ui/widgets/button/go_right_icon_button.dart";
import "../../../../shared/ui/widgets/templates/information_card.dart";

class ProductImageSlider extends StatefulWidget {
  final List<String> imageUrls;

  const ProductImageSlider({super.key, required this.imageUrls});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(length: widget.imageUrls.length, vsync: this);

  bool _canGoLeft = false;
  bool _canGoRight = false;

  @override
  void initState() {
    super.initState();

    _calcButton();

    _controller.addListener(
      () {
        if (_controller.index != _controller.previousIndex) {
          setState(_calcButton);
        }
      },
    );
  }

  void _calcButton() {
    _canGoLeft = _controller.index != 0;
    _canGoRight = _controller.index < _controller.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      replacement: Center(
        child: InformationCard(
          child: Text("No Images supplied for this product"),
        ),
      ),
      visible: widget.imageUrls.isNotEmpty,
      child: Stack(
        children: [
          Positioned.fill(
            child: TabBarView(
              controller: _controller,
              children: List.generate(
                widget.imageUrls.length,
                (index) {
                  var image = widget.imageUrls[index];

                  // TODO(Alex): Use BoxFit according to image ratio (e.g. Vertical or Horizontal image) and according
                  //  to ScreenOrientation (Vertical Image: In Portrait BoxFit.cover, In Landscape BoxFit.contain; vice versa for Horizontal image)
                  return Image.network(image);
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            child: _LeftButton(
              visible: _canGoLeft,
              onPressed: _canGoLeft ? () async => _controller.animateTo(_controller.index - 1) : null,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: _RightButton(
              visible: _canGoRight,
              onPressed: _canGoRight ? () async => _controller.animateTo(_controller.index + 1) : null,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _LeftButton extends StatelessWidget {
  final bool visible;
  final void Function()? onPressed;

  const _LeftButton({super.key, required this.visible, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return _AnimatedFade(
      visible: visible,
      child: GoLeftIconButton(
        onPressed: onPressed,
      ),
    );
  }
}

class _RightButton extends StatelessWidget {
  final bool visible;
  final void Function()? onPressed;

  const _RightButton({super.key, required this.visible, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return _AnimatedFade(
      visible: visible,
      child: GoRightIconButton(
        onPressed: onPressed,
      ),
    );
  }
}

class _AnimatedFade extends StatelessWidget {
  final bool visible;
  final Widget child;

  const _AnimatedFade({super.key, required this.visible, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: visible ? 1 : 0,
        child: child,
      ),
    );
  }
}
