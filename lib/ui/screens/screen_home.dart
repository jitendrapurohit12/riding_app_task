import 'package:flutter/material.dart';
import 'package:riding_app_task/constants/constant.dart';
import 'package:riding_app_task/model/list_model.dart';
import 'package:riding_app_task/styles/styles.dart';
import 'package:riding_app_task/ui/common/app_button.dart';
import 'package:riding_app_task/ui/common/custom_list_tile.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(
                left: kMarginLarge,
              ),
              child: Image.asset(kImageBackground),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: kMarginXL,
                ),
                SizedBox(
                  height: 36,
                  child: Row(
                    children: <Widget>[
                      Image.asset(kImageMenu, width: 36, height: 36),
                      Spacer(),
                      Text('dovezi.mi', style: styleMenuTextBold(context)),
                    ],
                  ),
                ),
                SizedBox(
                  height: kMarginXL,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Welcome,\n', style: styleheadingRegular),
                      TextSpan(text: 'Jane Doe', style: styleDisplay2(context))
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        kDummyText,
                        style: styleHint(context),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    )
                  ],
                ),
                SizedBox(height: kMarginXL),
                AppButton(
                  label: 'REQUEST PICKUP',
                  callback: () => showPickupDetailSheet(context),
                ),
                SizedBox(height: kMarginXXL),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showPickupDetailSheet(BuildContext context) async {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.fromLTRB(
              kPaddingLarge, kPaddingSmall, kPaddingLarge, kPaddingLarge),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(kImagePill, height: 8),
              SizedBox(height: kMarginMedium),
              Text(
                'You will schedule a pickup',
                style: styleTitle(context),
              ),
              SizedBox(height: kMarginMedium),
              for (int i = 0; i < list.length; i++)
                CustomListTile(list[i], () {}),
              SizedBox(height: kMarginMedium),
              AppButton(
                label: 'CONFIRM',
                callback: () => Navigator.pop(context),
              ),
              SizedBox(height: kMarginSmall),
            ],
          ),
        );
      },
    );
  }
}
