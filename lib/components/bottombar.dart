import 'package:flutter/material.dart';
import 'package:hello_dimipay/dto/product_dto.dart';
import 'package:hello_dimipay/maps/box_decoration.dart';
import 'package:hello_dimipay/maps/colors.dart';
import 'package:hello_dimipay/maps/text_style.dart';
import 'package:hello_dimipay/util.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;

  const ProductCard({Key? key, required this.name, required this.price}): super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = getHeightByPercent(context, 6);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: CustomColor.primary.value,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        spacing: 24,
        children: [
          Image.asset("assets/dummy.png", height: height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(name),
              Text(price, style: CustomTextStyles.description.value,)
            ],
          )
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  final List<ProductDTO> products;

  const BottomBar({Key? key, required this.products}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var paddingV = getHeightByPercent(context, 3.5);
    var paddingH = getHeightByPercent(context, 3);
    return Container(
      height: getHeightByPercent(context, 20),
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      decoration: CustomBoxDecoration.widget.value,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: getWidthByPercent(context, 100)),
          child: Row(
            spacing: 30,
            children: (() {
              return products.map((product) {
                return GestureDetector(
                  onTap: () => product.addToCart(context),
                  child: ProductCard(name: product.name, price: product.price),
                );
              });
            })().toList(),
          ),
        ),
      ),
    );
  }
}