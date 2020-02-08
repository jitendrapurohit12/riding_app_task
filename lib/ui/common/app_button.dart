import 'package:flutter/material.dart';
import 'package:riding_app_task/constants/constant.dart';
import 'package:riding_app_task/styles/styles.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback callback;

  const AppButton({Key key, this.label, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: callback,
        color: kColorButton,
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Text(label, style: styleAppButtonLabel),
      ),
    );
  }
}
