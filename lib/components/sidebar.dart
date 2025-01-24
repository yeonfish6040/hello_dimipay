import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_dimipay/main.dart';
import 'package:hello_dimipay/maps/box_decoration.dart';
import 'package:hello_dimipay/util.dart';
import 'package:hello_dimipay/maps/colors.dart';
import 'package:hello_dimipay/maps/text_style.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = 12;
    var height = getHeightByPercent(context, 5);

    var user = Home.of(context)!.user;
    var userDetail = Home.of(context)!.userDetail;
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
      decoration: CustomBoxDecoration.subWidget.value,
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

    var isFaceSignAvailable = Home.of(context)!.isFaceSignAvailable;
    return Container(
      width: getWidthByPercent(context, 20),
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      decoration: CustomBoxDecoration.widget.value,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // upper
          Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/logo.svg",
                width: getWidthByPercent(context, 12),
              ),
              ProfileCard(),
            ],
          ),

          // lower
          Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // face pay btn
              GestureDetector(
                onTap: () { Home.of(context)!.changeFaceSignState(); }, // TODO: And actions.
                child: Container(
                  height: getHeightByPercent(context, 6),
                  decoration: BoxDecoration(
                    color: isFaceSignAvailable ? CustomColor.button.value : CustomColor.buttonDisabled.value,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SvgPicture.asset(isFaceSignAvailable ? "assets/face_sign.svg" : "assets/face_sign_disabled.svg", width: 24),
                      Text("Face Sign 결제", style: CustomTextStyles.button.value,),
                    ],
                  ),
                ),
              ),
              Text("결제를 하려면 지금 결제 바코드를 인식하거나, Face Sign을 사용해주세요.", style: CustomTextStyles.description.value)
            ],
          )
        ],
      )
    );
  }
}