import 'package:flutter/cupertino.dart';
import 'package:hello_dimipay/dto/product_dto.dart';
import 'package:hello_dimipay/main.dart';
import 'package:hello_dimipay/maps/text_style.dart';
import 'package:hello_dimipay/util.dart';

import '../maps/box_decoration.dart';

class CartItem extends StatelessWidget {
  final ProductDTO product;

  const CartItem({Key? key, required this.product}): super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets box_padding = EdgeInsets.symmetric(vertical: 12, horizontal: 16);

    return Container(
      decoration: CustomBoxDecoration.widget.value,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 6,
            children: [
              Text(product.name, style: CustomTextStyles.subject.value,),
              Text(product.price, style: CustomTextStyles.description.value,),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              GestureDetector(
                onTap: () => product.addToCart(context),
                child: Container(
                  padding: box_padding,
                  decoration: CustomBoxDecoration.subWidget.value,
                  child: Text("+"),
                ),
              ),
              Text(product.quantity.toString()),
              GestureDetector(
                onTap: () => product.removeFromCart(context),
                child: Container(
                  padding: box_padding,
                  decoration: CustomBoxDecoration.subWidget.value,
                  child: Text("-"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Home.of(context)!;
    
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: getHeightByPercent(context, 100)),
          child: Column(
            spacing: 16,
            children: state.cartList.map((product) {
              return CartItem(product: product);
            }).toList(),
          ),
        ),
      ),
    );
  }
}