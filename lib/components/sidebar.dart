import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_dimipay/util.dart';
import 'package:hello_dimipay/maps/colors.dart';
import 'package:hello_dimipay/maps/text_style.dart';

class ProfileCard extends StatelessWidget {
  final String user;
  final String userDetail;

  const ProfileCard({Key? key, required this.user, required this.userDetail}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = 12;
    var height = getHeightByPercent(context, 5);
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
      decoration: BoxDecoration(
        color: CustomColor.primary.value,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 8,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/profile.png",
              height: height,
            ),
          ),
          SizedBox(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user,
                  style: CustomTextStyles.subject.value,
                ),
                Text(userDetail,
                  style: CustomTextStyles.description.value,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    var paddingV = getHeightByPercent(context, 3.5);
    var paddingH = getHeightByPercent(context, 3);
    return Container(
      width: getWidthByPercent(context, 20),
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "assets/logo.svg",
            width: getWidthByPercent(context, 12),
          ),
          ProfileCard(user: "이연준", userDetail:  "1학년 3반 24번"),
        ],
      ),
    );
  }
}