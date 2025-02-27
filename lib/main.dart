import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_dimipay/activities/main_activity.dart';
import 'package:hello_dimipay/dto/product_dto.dart';

import 'maps/colors.dart';

void main() {
  runApp(const Runner());
}

class Runner extends StatelessWidget {
  const Runner({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dimipay kiosk demo',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColor.primary.value,
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColor.primaryInverse.value),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

  static _HomeState? of(BuildContext context) =>
      context.findAncestorStateOfType<_HomeState>();
}

class _HomeState extends State<Home> {
  var user = "이연준";
  var userDetail = "1학년 3반 24번";

  var isFaceSignAvailable = false;

  List<ProductDTO> productList = [
    ProductDTO("1", "감자칩", 1200, displayOnBottomBar: true),
    ProductDTO("2", "고구마칩", 1200, displayOnBottomBar: true),
    ProductDTO("3", "양파칩", 1200, displayOnBottomBar: true),
    ProductDTO("4", "사과칩", 1200, displayOnBottomBar: true),
    ProductDTO("5", "배칩", 1200, displayOnBottomBar: true),
    ProductDTO("6", "귤칩", 1200, displayOnBottomBar: true),
    ProductDTO("7", "바나나 칩", 1200, displayOnBottomBar: true),
    ProductDTO("8", "맛있는 칩", 1200, displayOnBottomBar: true),
    ProductDTO("9", "하리보 칩", 1200, displayOnBottomBar: true),
    ProductDTO("10", "피쉬 앤 칩", 1200, displayOnBottomBar: true),
    ProductDTO("11", "먹으면 뿅가는 칩", 1200, displayOnBottomBar: true),
  ];
  List<ProductDTO> cartList = [];

  void changeFaceSignState() {
    setState(() {
      if (isFaceSignAvailable) {
        isFaceSignAvailable = false;
      }else {
        isFaceSignAvailable = true;
      }
    });
  }

  void addProductToCart(ProductDTO product) {
    setState(() {
      var exists = cartList.where((e) => e.id == product.id);
      if (exists.isEmpty) {
        cartList.add(product.add());
      }else {
        exists.first.add();
      }

      if (exists.length > 1) {
        throw Exception("Error: error integrity check failed.");
      }
    });
  }

  void removeProductFromCart(ProductDTO product) {
    setState(() {
      var exists = cartList.where((e) => e.id == product.id);
      if (exists.isNotEmpty) {
        exists.first.sub();
        if (exists.first.quantity == 0) {
          cartList.removeWhere((e) => e.id == product.id);
        }  
      }

      if (exists.length > 1) {
        throw Exception("Error: error integrity check failed.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainActivity();
  }
}
