import 'package:e_shop/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final ProductModel? productModel;
  final Function? onPress;
  const ItemCard({
    Key? key,
    this.productModel,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Hero(
                  tag: '${productModel?.id}',
                  child: Image.asset(productModel?.image ?? '')),
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: productModel?.color ?? kTextColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
            child: Text(
              productModel?.title ?? '',
              style: const TextStyle(
                color: kTextColor,
              ),
            ),
          ),
          Text(
            '\$${productModel?.price ?? ''}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
