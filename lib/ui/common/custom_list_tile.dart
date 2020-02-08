import 'package:flutter/material.dart';
import 'package:riding_app_task/constants/constant.dart';
import 'package:riding_app_task/model/list_model.dart';
import 'package:riding_app_task/styles/styles.dart';

class CustomListTile extends StatelessWidget {
  final ListModel model;
  final VoidCallback callback;

  CustomListTile(this.model, this.callback);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPaddingExtraSmall),
      child: ListTile(
        leading: Material(
          borderRadius: BorderRadius.circular(16),
          elevation: 12,
          shadowColor: Colors.grey.shade50,
          child: Padding(
            padding: const EdgeInsets.all(kPaddingMedium),
            child: Image.asset(model.icon, height: 24, width: 24),
          ),
        ),
        title: Text(model.title, style: styleTitleGray(context)),
        subtitle: Text(model.subtitle, style: styleTitle(context)),
      ),
    );
  }
}
