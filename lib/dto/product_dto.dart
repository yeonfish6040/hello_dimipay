import 'package:flutter/cupertino.dart';
import 'package:hello_dimipay/main.dart';

class ProductDTO {
  final String _id;
  final String _name;
  final int _price;

  final bool displayOnBottomBar;
  final String moneyUnit;

  var quantity = 0;

  ProductDTO(this._id, this._name, this._price, {
    this.displayOnBottomBar = false,
    this.moneyUnit = "원",
  });

  String get id => this._id;
  String get name => this._name;
  String get price => this._price.toString()+moneyUnit;

  ProductDTO add() {
    quantity++;
    return this;
  }

  ProductDTO sub() {
    if (quantity > 1) quantity--;
    return this;
  }

  ProductDTO addToCart(BuildContext context) {
    Home.of(context)!.addProductToCart(this);
    return this;
  }
}