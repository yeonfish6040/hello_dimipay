import 'package:flutter/material.dart';
// import 'package:hello_dimipay/components/bottombar.dart';
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
            // BottomBar()
          ],
        )
    );
  }
}