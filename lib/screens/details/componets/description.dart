import 'package:e_shop/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        productModel?.description ?? '',
        style: const TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
