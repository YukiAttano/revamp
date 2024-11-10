import "package:flutter/material.dart";

import "../../data/product.dart";
import "doom_product_bottomline.dart";
import "doom_product_headline.dart";
import "product_image_slider.dart";

class DoomPage extends StatelessWidget {
  final Product product;

  const DoomPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ProductImageSlider(imageUrls: product.imageUrls),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: DoomProductHeadline(
            title: product.title,
            onInfo: _emptyCallback,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: DoomProductBottomline(
            description: product.description,
            subDescription: product.properties,
            costs: product.costs,
            condition: product.condition,
            onAsk: () {},
            onBuy: () {},
          ),
        ),
      ],
    );
  }

  static void _emptyCallback() {}
}
