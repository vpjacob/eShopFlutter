import 'package:e_shop/constants.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/screens/details/componets/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final ProductModel? productModel;
  const Body({Key? key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.3,
                  ),
                  padding: EdgeInsets.only(
                    top: size.height * 0.13,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(productModel: productModel),
                      const SizedBox(height: kDefaultPaddin * 0.5),
                      Description(productModel: productModel),
                      const SizedBox(height: kDefaultPaddin * 0.5),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPaddin * 0.5),
                      AddToCart(productModel: productModel)
                    ],
                  ),
                ),
                ProductTitleWithImage(productModel: productModel),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
