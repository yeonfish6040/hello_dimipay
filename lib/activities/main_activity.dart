import 'package:flutter/material.dart';
import 'package:hello_dimipay/components/bottombar.dart';
import 'package:hello_dimipay/components/sidebar.dart';
import 'package:hello_dimipay/activities/widget_frame.dart';

class MainActivity extends StatelessWidget {
  const MainActivity({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetFrame(
        child: Column(
          spacing: 16,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Sidebar()
                ],
              )
            ),
            BottomBar(products: [["모나미 볼펜", "500원"], ["필기 공책", "1000원"], ["클립 100개입", "1200원"], ["칫솔", "2000원"], ["치약", "1000원"], ["애플팬슬 팬촉", "8000원"], ["아이패드 필름", "5000원"], ["컴퓨터용 사인펜", "300원"], ["설곤약", "500원"], ["네모스낵", "400원"]])
          ],
        )
    );
  }
}