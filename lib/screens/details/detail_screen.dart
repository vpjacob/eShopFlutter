import 'package:e_shop/constants.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/screens/details/componets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel? productModel;
  const DetailScreen({
    Key? key,
    this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: productModel?.color,
      appBar: buildAppBar(context),
      body: Body(
        productModel: productModel,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart.svg'),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
      elevation: 0,
      backgroundColor: productModel?.color,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
