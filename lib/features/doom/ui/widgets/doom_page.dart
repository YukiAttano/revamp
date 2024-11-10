import "package:flutter/material.dart";

import "../../data/product.dart";
import "doom_product_bottomline.dart";
import "doom_product_headline.dart";

class DoomPage extends StatelessWidget {
  final Product product;

  const DoomPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            "https://as2.ftcdn.net/v2/jpg/04/57/92/25/1000_F_457922518_grtXDz7A6pyAIqHoC6BpUOo8JkFtKIof.jpg",
            fit: BoxFit.fill,
          ),
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
            onAsk: () {},
            onBuy: () {},
          ),
        ),
      ],
    );
  }

  static void _emptyCallback() {}
}
